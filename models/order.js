
const connection = require('../config/connect');
const details=require('../models/order_delaits')
class Order{
   static get = ()=>{
        return new Promise((reslove,reject)=>{
            return connection.query("SELECT * FROM `order`",(err,data)=>{
              if(err){
                console.log(err)
                reject(err)
               }else{
                reslove(data)
              } 
            })
        })
   };
   static create(data){
       return new Promise((reslove)=>{
            var  user_id = 0;
            var address ="";
            var totals=[];
            data.forEach((item)=>{
                user_id = item.user_id;
                address= item.address
                totals.push(item.price*item.qty)
            })
        var all_totals = totals.reduce((a,b) => a + b,0);
        
        var sql ="INSERT INTO `order` (`totals`, `user_id`,`address`) VALUES ("+all_totals+","+user_id+",'"+address+"')"   
          connection.query(sql,(err,result)=>{
                if(!err) {
                  var  order_id = result.insertId
                    data.forEach( async (item)=>{
                      const result = await  details.create(order_id,item.id,item.qty)
                      if(result){
                        console.log(result)
                      }
                    })
                  return  reslove(true)
                }
               else
                  console.log(err)
                  return  reslove(false)

           });
       }) 
   };
   static update(data,id){
    return new Promise((reslove)=>{
      return connection.query(`UPDATE order  SET ? WHERE id ='${id}'`,data,(err)=>{
            if(!err)
               reslove(true)
            else
                console.log(err)
                reslove(false)
      })
    })
 
   };
   static delete(id){
    return new Promise((reslove)=>{
        var sql ="DELETE FROM `order` WHERE id="+id+"";
     return  connection.query(sql,(err)=>{
          if(!err) reslove(true)
          else
             console.log(err)
             reslove(false)
        })
    })
   }
}




module.exports = Order;
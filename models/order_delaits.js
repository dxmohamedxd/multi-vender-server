const connection = require("../config/connect");

class OrderDetails{
 static get(){
   return new Promise((reslove,reject)=>{
        return connection.query('SELECT * FROM order_details',(err,data)=>{
            if(err) 
            //   console.log(err)
            reject(err)
            else
            reslove(data)
        })
   })
 };
 static create(order_id,product_id,qty){
   return new Promise((reslove)=>{
    var sql ="INSERT INTO order_details (order_id,product_id,qty) VALUES ("+order_id+","+product_id+","+qty+")"
      return connection.query(sql,(err)=>{
        if(!err) reslove(true)
        console.log(err)
        reslove(false)
      })
   })
 };
 static update(data,id){
   return new Promise((reslove)=>{
    var sql ="UPDATE `order_details` SET ?  WHERE id="+id+""
     return connection.query(sql,data,(err)=>{
       if(!err) reslove(true)
           console.log(err)
          reslove(false)
     })
   })
 }
 static delete(id){
   return new Promise((reslove)=>{
      return connection.query(`DELETE FROM order_details WHERE id='${id}'`,(err)=>{
          if(!err) reslove(true) 
            console.log(err)
           reslove(false)
      })
   })
 }
}
module.exports= OrderDetails
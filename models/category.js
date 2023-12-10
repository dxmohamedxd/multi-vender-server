const connection = require("../config/connect");
class category{
    static get=()=>{
     return new Promise((reslove,reject)=>{
      connection.query("SELECT * FROM categoreis",(err,data)=>{
        if(err) return reject(err)
        return reslove(data)
      })
     })
    }
    static create(name){
        return new Promise((reslove)=>{
          let sql=`INSERT INTO categoreis (name_category) VALUES ("${name}")`;
            connection.query(sql,(err)=>{
                if(!err) 
                  reslove(true)
                else
                 console.log(err)
                 reslove(false)
            })
          })
    }
    static updade=(name,id)=>{
        return new Promise((reslove)=>{
            connection.query(`update  categoreis set  name_category ="${name}"  where category_id = '${id}'`,(err)=>{
                if(!err)
                   reslove(true)
                else
                console.log(err)
                  reslove(false)
            })
           })
    
    }
    static delete=(id)=>{
   return new Promise((reslove)=>{
    connection.query(`DELETE FROM categoreis where category_id='${id}'`,(err) =>{
       if(!err)
        reslove(true)
       else
       console.log(err)
        reslove(false)
    })
   })
    }
}
module.exports=category;
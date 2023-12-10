const connection = require("../config/connect")
class vender{
    
    
     static get(){
        return new Promise((resolve,reject)=>{
            connection.query("select * from venders" ,(err,data)=>{
                if(err) return reject(err)
                return resolve(data)
            })
        })
    };
    static  getVenderById(id){
       return Promise((resolve,reject)=>{
        var sql = `DELETE FROM venders where id='${id}'`;
        connection.query(sql,(err,data)=>{
          if(!err)
          resolve(data)
        else
          console.log(err);
         reject(err)
        })
       })

    }
  static   create(name,email,pass,address,service,img){
      return new Promise((resolve)=>{
       connection.query(`insert into venders (name,email,password,address,service,image) values('${name}','${email}','${pass}','${address}','${service}','${img}')`,(err,data)=>{
              if(!err){
                 resolve(data)
                resolve(true)
              }
              else
              console.log(err)
              resolve(false)
           }) 
        })

    };
  static  update(data,id){
      return new Promise((reslove)=>{
       connection.query(`update venders set ?  where id = '${id}'`,data,(err)=>{
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
            connection.query(`delete from venders where id='${id}'`,(err)=>{
               if(!err)
                  reslove(true)
               else
                 console.log(err)
                 reslove(false)
            })
         
         })
    }

}
module.exports = vender
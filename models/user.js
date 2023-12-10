const connection = require("../config/connect")

class user{
    static get(){
       return new Promise((reslove,reject)=>{
         connection.query(`SELECT * FROM users`,(err,data)=>{
           if(err) return reject(err)
           else
          console.log(data)
           return reslove(data)
         })
       })  
    }
    static getById(id){
      return new Promise((reslove,reject)=>{
        connection.query(`SELECT * FROM users where id = ${id};`,(err,data)=>{
          if(err) return reject(err)
          else
         console.log(data)
          return reslove(data)
        })
      })  
   }
    static create(name,email,pass,phone,roles){
        return new Promise((reslove)=>{
            connection.query(`INSERT INTO users (name,email,password,phone,roles)  values ('${name}','${email}','${pass}','${phone}','${roles}')`,(err,data)=>{
                if(!err) 
                  reslove(data)
                else
                 console.log(err)
                 reslove(false)
            })
          })
    }

    static loginAdmin(name,roles){
      return new Promise((reslove,reject)=>{
        return connection.query(`SELECT * FROM users where name='${name}' AND roles='${roles}'`,(err,data)=>{
           if(!err) {
             console.log(data);
             reslove(data)
           }else{
              console.log(err);
             reject(err)
           }
         })
       })
    }
    static login(name,email){
      return new Promise((reslove,reject)=>{
        return connection.query(`SELECT * FROM users where name='${name}' OR email='${email}'`,(err,data)=>{
           if(!err) {
             console.log(data);
             reslove(data)
           }else{
              console.log(err);
             reject(err)
           }
         })
       })
    }
    static update(data,id){
        return new Promise((reslove)=>{
            connection.query(`update users set ?  where id = '${id}'`,data,(err)=>{
                if(!err)
                   reslove(true)
                else
                console.log(err)
                  reslove(false)
            })
           })
    }
    static delete(id){
        return new Promise((reslove)=>{
            connection.query(`delete from users where id='${id}'`,(err)=>{
               if(!err)
                  reslove(true)
               else
                 console.log(err)
                 reslove(false)
            })
         
         })
    }
}
module.exports = user
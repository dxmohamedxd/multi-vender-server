const connection =require("../config/connect")

class product{

    static get= ()=>{
        return new Promise((reslove,reject)=>{
          connection.query(`SELECT * FROM products`,(err,data)=>{
            if(err) return reject(err)
            return reslove(data)
          })
        })  
     }
     static create(name,pr,im,des,qty,cat){
         return new Promise((reslove)=>{
          var sql=`INSERT INTO products (name, price,image, descr,qty,category_id)  VALUES ('${name}','${pr}','${im}','${des}','${qty}','${cat}')`
             connection.query(sql,(err)=>{
                 if(!err) 
                   reslove(true)
                 else
                  console.log(err)
                  reslove(false)
             })
           })
     }
     static limitOfsetProduct(id){
      return new Promise((reslove,reject)=>{
        connection.query(`SELECT * FROM products limit 3 offset ${id}`,(err,data)=>{
          if(err) return reject(err)
          return reslove(data)
        })
      })  
     }
     static getOneProductById(id){
      return new Promise((reslove,reject)=>{
        connection.query(`SELECT * FROM products WHERE id ='${id}'` ,(err,data)=>{
          if(err) return reject(err)
          return reslove(data)
        })
      }) 
     }
     static update(img,data,id){
         return new Promise((reslove)=>{
             connection.query(`update products set image='${img}', ?  where id = '${id}'`,data,(err)=>{
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
             connection.query(`delete from products where id='${id}'`,(err,data)=>{
                if(!err){
                  reslove(data)
                  // reslove(true)
                }else
                  console.log(err)
                  reslove(false)
             })
          
          })
     }
}
module.exports= product;
const order = require("../models/order");
const jwt = require("jsonwebtoken");
 class orderController{
     static  async getOrder(req,res){
      // check for token
      // response not authroized
      // continue work
         const  get_order = await order.get() 
         console.log(get_order)
         if(get_order){
           return res.status(200).json({status:true,msg:"get all order",order:get_order})
         }
     }
      static   async   InsertOrder(req,res){
     
        // const qty = req.body.quantity;
        // const user = req.body.user_id;
        // const address   = req.body.address;
          console.log(req.body);

           let  headers = req.headers['authorization'];
          //  console.log(headers);
        //    let token = headers && headers.split(" ")[1];
        //  if(token){
        //    var decoded = jwt.verify(token,process.env.jwt_secret_key,(err,data)=>{
        //     if(err) throw err
        //     return data
        //    });  
        // }
     
         
        const  insert_order = await order.create(req.body);
        if(insert_order)
            return  res.status(200).json({status:true,msg:"The order has been purchased"})
        else
            return  res.status(400).json({status:false,msg:"Not Added"})
     };
     static async UpdateOrder(req,res){
          const data = req.body.data;
          const id   =   req.params.id ;
          console.log(id);
          console.log(data);
       var  update_order = await order.update(data,id);
          if(update_order)
          return  res.status(200).json({status:true,msg:"Updated Successfully"})
          else
            return  res.status(400).json({status:false,msg:" Not Updated"})

     };
     static async DeleteOrder(req,res){
        const id= req.params.id
       console.log( typeof id)
    var  delete_order = await order.delete(id);
      if(delete_order)
         return  res.status(200).json({status:true,msg:"Deleted Successfully"})
      else
       return  res.status(400).json({status:false,msg:" Not Deleted"})
      

     }
 }
 module.exports = orderController
const { default: validator } = require("validator");
const vender = require("../models/vender");
const bcrypt = require("bcrypt");

// const { json } = require("express");

class venderController{
  static async  getVenders(req,res){
    const get =  await vender.get()
    return  res.status(200).json({status:true,msg:"vender data is displayed",vender:get})
    }
    static async createVender(req,res){
       
         const name = req.body.name;
         const email = req.body.email;
         const password = req.body.password
         const salt = bcrypt.genSaltSync(10);
         const hashedPassword =   await bcrypt.hash(password, salt);
         const address= req.body.address
         const service = req.body.service;
         const url =  await req.image.save("public/imageVender");
         const img = url.slice(url.indexOf("/") + 0);
         // console.log(hashedPassword);
        console.log(img);
      var addVender = await vender.create(name,email, hashedPassword,address,service,img) ;
   
      if(addVender){
          return res.status(200).json({status:true,msg:"Added Sucessfull"})
         }else{
           return  res.status(400).json({status:false,msg:"Not Added"})   
         }
         
    }
    static async getVenderById(req,res){
          try{
           let  id = req.params.id
              getVenById = await  vender.getVenderById(id)
              res.status(200).json({status:true, msg:"get vender by id",data: getVenById})
          }catch(err){
             res.status(404).json({status:false,msg:"Not Data"})
          }
    }
    static async updateVender(req,res){
         console.log(req.body)
         var data = req.body
         const id = req.params.id
         
         const update = await vender.update(data,id)
        if(update)
             return  res.status(200).json({status:true,msg:"Updated Successfully"})
        else
          return  res.status(400).json({status:false,msg:" Not Updated"})
    }
    static async deleteVender(req,res){
        const id = req.params.id
        console.log(id)
       var  destory = await vender.delete(id)
        //  var newVender = await vender.getVenderById(id)
        //  console.log(newVender);
        if(destory)
            return  res.status(200).json({status:true,msg:"Deleted Successfully"})
        else
           return  res.status(400).json({status:false,msg:" Not Deleted"})
    }
}
module.exports = venderController;
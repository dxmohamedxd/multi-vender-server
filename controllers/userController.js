const user= require('../models/user')
const bcrypt = require("bcrypt");
const generateJwtToken = require("../middleware/generateJWT")
class userController{
    static getUser = async(req,res) => {
        var getUser = await user.get()
       return  res.status(200).json({status:true,msg:"user data is displayed",users:getUser})
    }
    static getUserById = async(req,res) => {
      try {
        var getUser = await user.getById(req?.params?.id)
        return  res.status(200).json({status:true,msg:"user data is displayed",users:getUser})  
      } catch (error) {
        console.log({error});
        return res.status(500).json({status: false, msg: `server side error: ${error}`})
      }
      
  }
    static  createUser = async(req,res)=>{
       
            const name = req.body.name;
            const email = req.body.email;
            const password = req.body.password
            const salt = bcrypt.genSaltSync(10);
            const hashedPassword =   await bcrypt.hash(password, salt);
            const phone = req.body.phone;
            console.log(hashedPassword)
          try {
            var addUser = await user.create(name,email,hashedPassword,phone) ;
            const newUser = await user.getById(addUser?.insertId);
            delete newUser[0].password
            console.log({newUser})
            return  res.status(200).json({status:true,msg:"Added Sucessfull", data: newUser})
          } catch (error) {
            res.status(500).json({status: false, msg: `server side error: ${error}`})
          }
          
      }
      static async adminLogin(req,res){
        let name     = req.body.name;
        let pass = req.body.password;
        let roles = 1
    
        // try{
          let  login_admin = await user.loginAdmin(name,roles)
          if(login_admin){
            if(await bcrypt.compare(pass,login_admin[0].password)){
              delete login_admin[0].password;
              const token = generateJwtToken({login_admin})
              console.log({token});   
              res.status(200).json({status:true,msg:"You logged in successfully",name:login_admin[0].name,token}) 
            }else{
              res.status(400).json({status:false,msg:"Password Is Wrong"});
            }
        }else{
          res.status(401).json({status:false,msg:"Unauthorized"})
        }
        // }catch(err){
        //   res.status(401).json({status:false,msg:"Unauthorized",err})
        // }
   
      }
      static async loginUser(req,res){
          let name     = req.body.name;
          let password = req.body.password;
          let email= req.body.email
          try{
            let  login_user = await user.login(name,email)
            if(login_user){
              if(await bcrypt.compare(password,login_user[0].password)){
                delete login_user[0].password;
                const token = generateJwtToken(login_user)
                console.log({token});   
                res.status(200).json({status:true,msg:"You logged in successfully",id:login_user[0].id,token}) 
              }else{
                res.status(401).json({status:false,msg:"Unauthorized"})
              }
          }
          }catch(err){
            res.status(400).json({status:false,msg:"Unauthorized"})
          }
     
      
       }
      static  updateUser = async(req,res)=>{
        console.log(req.body)
        var data = req.body
            const id = req.params.id
            // const name = req.body.name
            // const email = req.body.email
            // const password = req.body.password
         
            var update = await user. update(data,id)
        if(update)
             return  res.status(200).json({status:true,msg:"Updated Successfully"})
        else
          return  res.status(400).json({status:false,msg:" Not Updated"})
  }
  
  static deleteUser = async(req,res)=>{
    const id= req.params.id
    console.log(id)
   var  destory = await user.delete(id)
    if( destory )
        return  res.status(200).json({status:true,msg:"Deleted Successfully"})
    else
       return  res.status(400).json({status:false,msg:" Not Deleted"})
 }
}
module.exports = userController
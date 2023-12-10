const category = require("../models/category");
class categoryController{
    static  getCategory = async(req,res)=>{
         const get = await category.get();
           console.log(get);
      return  res.status(200).json({status:true,msg:"get All category",category:get})

    } 
    static  createCategory = async(req,res)=>{
      
      var addcategory = await category.create( req.body.name) ;
      if(addcategory)
          return  res.status(200).json({status:true,msg:"Added Sucessfull"})
      else
        return  res.status(400).json({status:false,msg:"Not Added"})
  }
  static updateCategory = async(req,res)=>{
    let  id = Number(req.params.id);
    let  name = req.body.name
    console.log( typeof id);
    console.log(req.body.name);

    var updateCat = await category.updade(name,id);
    if(updateCat)
      return  res.status(200).json({status:true,msg:"Updated Successfully"})
    else 
    return  res.status(400).json({status:false,msg:" Not Updated"})

  }
  static deleteCatgory = async(req,res)=>{
      const id = req.params.id;
      console.log(id);
      var del = await category.delete(id)
      if(del)
      return  res.status(200).json({status:true,msg:"Deleted Successfully"})
      else
         return  res.status(400).json({status:false,msg:" Not Deleted"})
  }
}
module.exports = categoryController;
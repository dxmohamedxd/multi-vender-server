const { log } = require('console');
const product = require('../models/product')
const fs = require('fs');
class productController{
    static getProducts = async(req,res) => {
      
    const pro =  await product.get()
   
       return  res.status(200).json({status:true,msg:"product data is displayed",product:pro})
    }
    static  async limitProduct(req,res){
        let id = req.params.id
           let limitPro =  await product.limitOfsetProduct(id)
           return  res.status(200).json({status:true,msg:"product data is displayed",product:limitPro})
 
    }
    static getOneproduct = async(req,res) => {
        var id =  req.params.id
      const pro =  await product.getOneProductById(id)
     
         return  res.status(200).json({status:true,msg:"product data is displayed",product:pro})
      }
    static  createProduct = async(req,res)=>{
       
            const name = req.body.name;
            const price = req.body.price;
             const url =  await req.image.save("public/imgUpload");
             const img = url.slice(url.indexOf("/") + 0);
            const desc = req.body.descr;
            const category = req.body.category  
            const qty= req.body.qty
            console.log(img)
            console.log(req.body)
          var addproduct = await product.create(name,price,img,desc,qty,category) ;
          if(addproduct)
              return  res.status(200).json({status:true,msg:"Added Sucessfull"})
          else
            return  res.status(400).json({status:false,msg:"Not Added"})
      }
      static  updateProduct = async(req,res)=>{
         var  id = req.params.id
             var data = req.body
      // if(req.body.image != ""){
        const keys = Object.keys(req);
        if(!keys.includes('image')){
         return res.status(400).json({ error: "No image uploaded." });
        }
         const url =  await req.image.save("public/imgUpload");
          const img = url.slice(url.indexOf("/") + 0);
            console.log(req.body)
            console.log(img)
            var update = await product.update(img,data,id)
          if(update)
              return  res.status(200).json({status:true,msg:"Updated Successfully"})
          else
            return  res.status(400).json({status:false,msg:" Not Updated"})

  }
  
  static deleteProduct = async(req,res)=>{
    const id= req.params.id
    console.log(id)
   var  destory = await product.delete(id)
  //   var getOneById = await product.getOneProductById(id)
  //   console.log(getOneById);
  //  try {
  //   fs.unlink("public"+ getOneById[0].image)
  //   console.log("تم حذف الملف بنجاح.");
  // } catch (err) {
  //   console.error(err);
  // }  
    
    if( destory )
        return  res.status(200).json({status:true,msg:"Deleted Successfully"})
    else
       return  res.status(400).json({status:false,msg:" Not Deleted"})
 }
}
module.exports = productController
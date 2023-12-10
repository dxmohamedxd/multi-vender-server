
const Detaits = require('../models/order_delaits');
class DetailsController{
    static async getDetails(req,res){
         var details = await Detaits.get()
         return  res.status(200).json({status:true,msg:"get All category",details})

    }
    static async CreateDetails(req,res){
       const order   = req.body.order_id;
       const product = req.body.product_id;
       const qty = req.body.qty;
       var insert = await Detaits.create(order,product,qty);
       if(insert)
       return  res.status(200).json({status:true,msg:"Added Sucessfull"})
       else
         return  res.status(400).json({status:false,msg:"Not Added"})

    }
    static async UpdateDetails(req,res){
             var data = req.body;
             var id = req.params.id;
             var updateOrder = await Detaits.update(data,id);
             if(updateOrder)
             return  res.status(200).json({status:true,msg:"Updated Successfully"})
             else 
             return  res.status(400).json({status:false,msg:" Not Updated"})
    }
    static async DeleteDetails(req,res){
       var id = req.params.id;
       var destory = await Detaits.delete(id);
       if(destory)
       return  res.status(200).json({status:true,msg:"Deleted Successfully"})
      else
         return  res.status(400).json({status:false,msg:" Not Deleted"})
    }
}
module.exports= DetailsController;
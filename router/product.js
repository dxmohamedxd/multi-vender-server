const router = require("express").Router();
const productControlle = require("../controllers/productController")
router.get("/get-all-product",productControlle.getProducts)
router.get("/limit-offset-product/:id",productControlle.limitProduct)
router.get("/get-one-product",productControlle.getOneproduct)
router.post("/add-new-product",productControlle.createProduct)
router.put("/edit-product/:id",productControlle.updateProduct)
router.delete("/delete-product/:id",productControlle.deleteProduct)
module.exports= router;
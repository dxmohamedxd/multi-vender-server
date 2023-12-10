
const router = require("express").Router();
const categoryController = require("../controllers/categoryController");

router.get("/get-category",categoryController.getCategory);
router.post("/add-new-category",categoryController.createCategory);
router.put("/edit-category/:id",categoryController.updateCategory)
router.delete("/delete-category/:id",categoryController.deleteCatgory)

module.exports= router;
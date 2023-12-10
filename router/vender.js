const router =  require("express").Router();
const venderController = require("../controllers/venderController");
router.get("/get-all-vender",venderController.getVenders);
router.post("/add-new-vender",venderController.createVender);
router.put("/edit-vender/:id",venderController.updateVender);
router.delete("/delete-vender/:id",venderController.deleteVender)

module.exports = router

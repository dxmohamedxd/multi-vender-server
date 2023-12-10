const router = require("express").Router();

const DetailsController = require("../controllers/DetailsController");
router.get("/get-all-details",DetailsController.getDetails);
router.post("/add-order-details",DetailsController.CreateDetails);
router.put("/edit-details/:id",DetailsController.UpdateDetails);
router.delete("/detele-details/:id",DetailsController.DeleteDetails);
module.exports= router;

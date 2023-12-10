const router = require('express').Router();
const orderController = require("../controllers/orderController");
router.get('/get-all-order',orderController.getOrder);
router.post("/add-new-order",orderController.InsertOrder);
router.put('/update-order/:id',orderController.UpdateOrder);
router.delete('/delete-order/:id',orderController.DeleteOrder);

module.exports = router;
const router = require("express").Router();

const userController = require('../controllers/userController')
router.get("/get-all-user",userController.getUser);
router.get("/user/:id",userController.getUserById);
router.post("/login-admin",userController.adminLogin);
router.post("/add-new-user",userController.createUser);
router.post("/login-user",userController.loginUser);
router.put("/edit-user/:id",userController.updateUser);
router.delete("/delete-user/:id",userController.deleteUser)
module.exports = router;
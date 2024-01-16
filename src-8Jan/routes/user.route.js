const express=require("express");
const controller=require("../controllers/user.controller")
const validation=require("../validations/user.validation")
const auth=require("../middleware/auth/auth")
const{ upload } = require('../middleware/multer/uploadImage')
const router=express.Router();

router.post("/add-user",[auth.verifyToken],validation.addUser,controller.addUser);
//router.post("/add-user",[auth.verifyToken],validation.addUser, upload.single('file'),controller.addUser);
router.get("/get-user/:userid",controller.getUserById);
router.get("/get-alluser",[auth.verifyToken],controller.getAllUser);
router.delete("/delete-user/:userid",[auth.verifyToken],controller.deleteUserByID)
// Update logged in user data
router.post("/update-user",[auth.verifyToken],validation.updateLoggedInUser,controller.updateUser) 
// Update user detail by id
router.post("/update-userid/:id",[auth.verifyToken],controller.updateUserById)

module.exports=router;


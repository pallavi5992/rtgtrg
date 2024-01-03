const express=require("express");
const controller=require("../controllers/user.controller")
const validation=require("../validations/user.validation")
const auth=require("../middleware/auth/auth")
const router=express.Router();

router.post("/add-user",[auth.verifyToken],validation.addUser,controller.addUser);
router.get("/get-user/:userid",controller.getLoggedInUser);
router.post("/update-user",[auth.verifyToken],validation.updateUser,controller.updateUser)


module.exports=router;


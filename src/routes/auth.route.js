const express=require("express");
const controller=require("../controllers/auth.contoller")
const validation=require("../validations/auth.validation");
const auth=require("../middleware/auth/auth")
const router=express.Router();

router.post("/login",validation.login,controller.login);
router.post("/logout",[auth.verifyToken],controller.logout);

module.exports=router;
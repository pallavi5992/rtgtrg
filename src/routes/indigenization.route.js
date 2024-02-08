const express=require("express");
const controller=require("../controllers/indigenization.controller.js")
const validation =require("../validations/indigenization.validation.js")
const auth=require("../middleware/auth/auth.js")
const router=express.Router();

 router.post("/add-indigenizationData",[auth.verifyToken],validation.addIndigenization,controller.indigenizationData);
router.get("/getAll-indigenizationData",[auth.verifyToken],controller.getAllIndigenizationData);
// router.get("/get-orderBookPositionDataById/:OrderBookID",[auth.verifyToken],controller.orderBookPositionDataById);
// router.put("/update-orderBookById/:OrderBookID",[auth.verifyToken],controller.updateOrderBookPositionDataById);
// router.put("/delete-orderBookById/:OrderBookID",[auth.verifyToken],controller.deleteOrderBookById);

// router.get("/percentage-org",controller.pieChartOrganisation);


module.exports=router;

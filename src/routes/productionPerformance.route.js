const express=require("express");
const controller=require("../controllers/productionPerformance.controller.js")
const validation =require("../validations/prPerformance.validation")
const auth=require("../middleware/auth/auth")
const router=express.Router();

router.post("/add-prPerformanceData",[auth.verifyToken],validation.addprPerformance,controller.addprPerformanceData);
router.get("/getAll-prPerformanceData",[auth.verifyToken],controller.getAllprPerformanceData);
router.get("/get-prPerformanceById/:ProductionID",[auth.verifyToken],controller.getprPerformanceById);
router.put("/update-prPerformanceById/:ProductionID",[auth.verifyToken],validation.updateprPerformance,controller.updateprPerformanceById);
router.delete("/delete-prPerformanceById/:ProductionID",[auth.verifyToken],controller.deletePrProd);
//router.get("/count-organisation",[auth.verifyToken],controller.countOrganisation);
// router.get("/percentage-organisation",[auth.verifyToken],controller.OrgTypePrPercentage);
router.get("/percentage-org",controller.pieChartOrganisation);
// router.get("/organisation-count",[auth.verifyToken],controller.organisationCount);

module.exports=router;

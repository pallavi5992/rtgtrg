const db = require("../models");
const prProduction = db.prProduction;
const FyYear = db.tblYear
const Organisation= db.organisation
const addprPerformance = async (req, res, next) => {
  try {
    const { DPSU, VOP, YearID, Quarter, Remarks } = req.body;
    if (!DPSU) {
      return res
        .status(400)
        .send({ status: false, message: "Please select DPSU" });
    } else if (!VOP) {
      return res.status(400).send({
        status: false,
        message: "Please Enter Value Of Production!",
      });
    } else if (!YearID) {
      return res.status(400).send({
        status: false,
        message: "Please select data year!",
      });
    } else if (!Quarter) {
      return res.status(400).send({
        status: false,
        message: "Please select Quarter!",
      });
    } else if (!Remarks) {
      return res.status(400).send({
        status: false,
        message: "Please Enter Remarks!",
      });
    }
    const DPSUExist = await Organisation.findOne({
        where: {
            OrganisationID: DPSU,
        },
      });
      if (!DPSUExist) {
        return res
          .status(400)
          .send({ status: false, message: "DPSU not exist" });
      }
    const FyYearExist = await FyYear.findOne({
        where: {
            YearID : YearID,
        },
      });
      if (!FyYearExist) {
        return res
          .status(400)
          .send({ status: false, message: "Financial Year not exist" });
      }

      const quarter = [1,2,3,4]
      const checkquarter = quarter.includes(Quarter)

      if(!checkquarter){
        return res
        .status(400)
        .send({ status: false, message: "Invalid Quarter" });
      }
  
    next();
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};

module.exports = {
  addprPerformance,
};

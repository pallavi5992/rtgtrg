const db = require("../models");
const FyYear = db.tblYear;
const Organisation = db.organisation;
const Indigenization = db.indigenization;

const checkIfIndigenizationExists = async (organisationID,ProjectName, SelectedMonth) => {
  try {
    const existingRecord = await Indigenization.findOne({
      where: {
        OrganisationID: organisationID,
        SelectedMonth: SelectedMonth,
        ProjectName:ProjectName
      },
    });

    return !!existingRecord; // Return true if the record exists, false otherwise
  } catch (error) {
    console.error("Error checking if record exists:", error);
    return false;
  }
};
const addIndigenization = async (req, res, next) => {
  try {
    const {
      OrganisationID,
      ProjectName,
      ProjectValue,
      SelectedMonth,
      Remarks,
    } = req.body;
    if (!OrganisationID) {
      return res
        .status(400)
        .send({ status: false, message: "Please select organisation" });
    }else if (!ProjectName) {
        return res
          .status(400)
          .send({ status: false, message: "Please select Project Name" });
      }  else if (!ProjectValue) {
      return res.status(400).send({
        status: false,
        message: "Please Enter Value Of Project!",
      });
    }else if (!SelectedMonth) {
      return res.status(400).send({
        status: false,
        message: "Please select month year!",
      });
    } else if (!Remarks) {
      return res.status(400).send({
        status: false,
        message: "Please Enter Remarks!",
      });
    }

    if (!/^\d{4}-\d{2}$/.test(SelectedMonth)) {
      return res
        .status(400)
        .send({ status: false, message: "Please Enter Valid Year Month" });
    }
    const OrgExist = await Organisation.findOne({
      where: {
        OrganisationID: OrganisationID,
      },
    });
    if (!OrgExist) {
      return res
        .status(400)
        .send({ status: false, message: "Organisation not exist" });
    }
    const recordExists = await checkIfIndigenizationExists(
      OrganisationID,
      ProjectName,
      SelectedMonth
    );
    if (recordExists) {
      return res
        .status(400)
        .send({ status: false, message: "Record already exists." });
    }

    next();
  } catch (error) {
    return res.status(400).send({ status: false, message: error.message });
  }
};

module.exports = {
  addIndigenization,
};

const db = require("../models");
const FyYear = db.tblYear;
const Morden = db.modernisationcapex;
const Organisation = db.organisation;


const checkIfMordenExists = async (organisationID, YearID) => {
  try {
    const existingRecord = await Morden.findOne({
      where: {
        OrganisationID: organisationID,
        YearID: YearID,
      },
    });

    return !!existingRecord; // Return true if the record exists, false otherwise
  } catch (error) {
    console.error("Error checking if record exists:", error);
    return false;
  }
};
const addmodernisationcapexData = async (req, res, next) => {
  try {
    const {
      OrganisationID,
      YearID,
      Remarks,
    } = req.body;
    if (!OrganisationID) {
      return res
        .status(400)
        .send({ status: false, message: "Please select organisation" });
    } else if (!YearID) {
        return res.status(400).send({
          status: false,
          message: "Please select data year!",
        });
      } else if (!Remarks) {
      return res.status(400).send({
        status: false,
        message: "Please Enter Remarks!",
      });
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
    const recordExists = await checkIfMordenExists(
      OrganisationID,
      YearID
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
    addmodernisationcapexData,
};

const db = require("../models");
const sequelize = require("sequelize");
const bcrypt = require("bcryptjs");
const helper = require("../helper/helper");
const jwt = require("jsonwebtoken");
const Morden = db.modernisationcapex;
const Organisation = db.organisation;
const tblYear = db.tblYear;
const pagination = require("../helper/pagination");
db.organisation.belongsTo(db.modernisationcapex, {
  foreignKey: "OrganisationID",
  as: "ComNam",
});

db.modernisationcapex.belongsTo(db.organisation, {
  foreignKey: "OrganisationID",
  as: "Company",
});
db.prProduction.belongsTo(db.tblYear, {
    foreignKey: "YearID",
    as: "FYYear",
  });
const modernisationcapexData = async (req, res) => {
  try {
    const {
      OrganisationID,
      YearID,
      Remarks,
    } = req.body;
    const token = req.headers["x-access-token"];
    const decodeToken = jwt.decode(token);
    const userId = decodeToken.id;

    await Morden.create({
      OrganisationID: OrganisationID,
      YearID: YearID,
      Remarks: Remarks,
      Deleted: "1",
      ModifiedBy: userId,
    });

    return res.status(200).send({
      status: true,
      message: "modernisation Capex Added Successfully",
    });
  } catch (error) {
    return res.status(400).send({ status: false, message: error.message });
  }
};
const getAllmodernisationcapexData = async (req, res) => {
  try {
    const { page, size } = req.query;
    const { limit, offset } = pagination.getPagination(page, size);
    const getAllData = await Morden.findAndCountAll({
      where: {
        Deleted: "1",
      },
      order: [
        ["ModernCapexID", "DESC"], // Sorts by COLUMN in ascending order
      ],
      include: [
        {
          model: Organisation,
          required: true,
          attributes: ["OrganisationID", "Name","Code"],
          as: "ComNam",
        },
      ],
      attributes: [
        "ModernCapexID",
        "OrganisationID",
        "FYYear",
        "Remarks",
        "Deleted",
      ],

      limit,
      offset,
    });
    const result = pagination.getPagingData(getAllData, page, limit);
    if (getAllData.count !== 0) {
      return res.status(200).json({
        status: true,
        message: "List of Modern Capex data",
        data: result,
      });
    } else {
      return res.status(200).json({
        status: true,
        message: "No data found",
        data: result,
      });
    }
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};


module.exports = {
    modernisationcapexData,
    getAllmodernisationcapexData
};

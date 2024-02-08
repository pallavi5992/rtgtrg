const db = require("../models");
const sequelize = require("sequelize");
const bcrypt = require("bcryptjs");
const helper = require("../helper/helper");
const jwt = require("jsonwebtoken");
const profitability = db.profitability;
const Organisation = db.organisation;
const FyYear = db.tblYear;
const pagination = require("../helper/pagination");
db.profitability.belongsTo(db.tblYear, {
  foreignKey: "YearID",
  as: "FYr",
});

db.profitability.belongsTo(db.organisation, {
  foreignKey: "OrganisationID",
  as: "OrganName",
});
const getPreviousFinancialYear = async (selectedYear)=> {
    console.log(selectedYear,"selectedYear*&*&")
    const FyYearExist = await FyYear.findOne({
        where: {
            YearID : selectedYear,
        },
      });
      
    // Extract the year portion from the selected year string
    const selectedYearParts = FyYearExist.Year.split('-');
    const selectedStartYear = parseInt(selectedYearParts[0]);
    
    // Calculate the previous financial year
    const previousYear = selectedStartYear - 1;
    const previousFinancialYear = `${previousYear}-${selectedStartYear}`;
  
    return previousFinancialYear;
  }
const addprofitabilityData = async (req, res) => {
    try {
      const token = req.headers["x-access-token"];
      const decodeToken = jwt.decode(token);
      const userId = decodeToken.id;
      const { OrganisationID, Amount, FyYearID, Quarter, Remarks } = req.body;
      const validPreviousFyYear = await getPreviousFinancialYear(FyYearID)
        if (validPreviousFyYear) {
            const PreviousFY = await FyYear.findOne({
                where: {
                    Year : validPreviousFyYear,
                },
              });
              if (!PreviousFY) {
                return res
                  .status(400)
                  .send({ status: false, message: "Invalid Previous Financial Year" });
              }
              await profitability.create({
                OrganisationID: OrganisationID,
                Amount: Amount,
                YearID: FyYearID,
                PreviousFY:PreviousFY.Year ,
                Quarter: Quarter,
                Remarks: Remarks,
                Deleted: "1",
                 ModifiedBy: userId,
              });
              return res.status(200).send({
                status: true,
                message: "Profitability Data Added Successfully",
              });
          } 
    
    } catch (error) {
      return res.status(500).send({ status: false, message: error.message });
    }
  };
const getAllProfitabilityData = async (req, res) => {
  try {
    const { page, size } = req.query;
    const { limit, offset } = pagination.getPagination(page, size);
    const getAllData = await profitability.findAndCountAll({
      where: {
        Deleted: "1",
      },
      order: [
        ["ProfitabilityID", "DESC"], // Sorts by COLUMN in ascending order
      ],
      include: [
        {
          model: FyYear,
          required: true,
          attributes: ["YearID", "Year"],
          as: "FYr",
        },
        {
          model: Organisation,
          required: true,
          attributes: ["OrganisationID", "Name","Code"],
          as: "OrganName",
        },
      ],
      attributes: [
        "ProfitabilityID",
        "OrganisationID",
        "Amount",
        "YearID",
        "PreviousFY",
        "Quarter",
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
        message: "List of profitability data",
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

const getProfitabilityById = async (req, res) => {
  try {
    const { ProfitabilityID } = req.params;
    if (!ProfitabilityID) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter ProfitabilityID" });
    }
    const profitabilityExsist = await profitability.findOne({
      where: {
        ProfitabilityID: ProfitabilityID,
      },
      include: [
        {
          model: Organisation,
          required: true,
          attributes: ["OrganisationID", "Name"],
          as: "OrganName",
        },
      ],
      attributes: [
        "ProfitabilityID",
        "OrganisationID",
        "Amount",
        "YearID",
        "PreviousFY",
        "Quarter",
        "Remarks"
      ],
    });

    if (!profitabilityExsist) {
      return res.status(404).send({
        status: false,
        message: `Data ${profitabilityExsist} not found`,
      });
    }
    return res.status(200).send({
      status: true,
      message: "Data found Successfully",
      data: profitabilityExsist,
    });
  } catch (error) {
    res.status(500).send({ status: false, message: error.message });
  }
};

const updateProfitabilityById = async (req, res) => {
  try {
    const token = req.headers["x-access-token"];
    const decodeToken = jwt.decode(token);
    const userId = decodeToken.id;
    const { ProfitabilityID } = req.params;
    const { OrganisationID,Amount, YearID, Quarter, Remarks } = req.body;
    if (!ProfitabilityID) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter ProfitabilityID" });
    }
    const profitabilityExsist = await profitability.findOne({
      where: {
        ProfitabilityID: ProfitabilityID,
      },
    });
    if (!profitabilityExsist) {
      return res.status(404).send({
        status: false,
        message: `Data ${ProfitabilityID} not found`,
      });
    }
    if(YearID){
      const validPreviousFyYear = await getPreviousFinancialYear(YearID)
        if (validPreviousFyYear) {
            const PrevFY = await FyYear.findOne({
                where: {
                    Year : validPreviousFyYear,
                },
              });
              if (!PrevFY) {
                return res
                  .status(400)
                  .send({ status: false, message: "Invalid Previous Financial Year" });
              }
               PreviousFY=  PrevFY.Year

              await profitability.update(
                { OrganisationID,Amount, YearID,PreviousFY, Quarter, Remarks, ModifiedBy: userId },
                { where: { ProfitabilityID } }
              );
    }

  }

    return res.status(200).send({
      status: true,
      message: `Profitability updated successfully`,
    });
  } catch (error) {
    res.status(500).send({ status: false, message: error.message });
  }
};

const deleteProfitabilityById = async (req,res)=>{
    try {
        const { ProfitabilityID } = req.params;
        if (!ProfitabilityID) {
            return res
              .status(400)
              .send({ status: false, message: "Please enter ProfitabilityID" });
          }
          const profitabilityExsist = await profitability.findOne({
            where: {
              ProfitabilityID: ProfitabilityID,
            },
          });
          if (!profitabilityExsist) {
            return res.status(404).send({
              status: false,
              message: `Data ${ProfitabilityID} not found`,
            });
          }
          await profitability.update(
            { Deleted: "0"},
            { where: { ProfitabilityID:ProfitabilityID } }
          );
          return res
          .status(200)
          .send({ status: true, message: "Order Book deleted successfully" });
    } catch (error) {
        res.status(500).send({ status: false, message: error.message });
    }
}
module.exports = {
  addprofitabilityData,
  getAllProfitabilityData,
  getProfitabilityById,
  updateProfitabilityById,
  deleteProfitabilityById
};

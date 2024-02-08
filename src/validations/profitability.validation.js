const db = require("../models");
const profitability = db.profitability;
const FyYear = db.tblYear
const Organisation= db.organisation

const checkIfProfitExists = async (OrganisationID,FyYearID, Quarter) => {
  try {
    const existingRecord = await profitability.findOne({
      where: {
        OrganisationID: OrganisationID,
        YearID: FyYearID,
        Quarter: Quarter,
      },
    });

    return !!existingRecord; // Return true if the record exists, false otherwise
  } catch (error) {
    console.error('Error checking if record exists:', error);
    return false;
  }
};

// const getPreviousFinancialYear = async (selectedYear)=> {
//     console.log(selectedYear,"selectedYear*&*&")
//     const FyYearExist = await FyYear.findOne({
//         where: {
//             YearID : selectedYear,
//         },
//       });
      
//     // Extract the year portion from the selected year string
//     const selectedYearParts = FyYearExist.Year.split('-');
//     const selectedStartYear = parseInt(selectedYearParts[0]);
    
//     // Calculate the previous financial year
//     const previousYear = selectedStartYear - 1;
//     const previousFinancialYear = `${previousYear}-${selectedStartYear}`;
  
//     return previousFinancialYear;
//   }
const addprofitabilityData = async (req, res, next) => {
  try {
    const { OrganisationID, Amount, FyYearID, Quarter, Remarks } = req.body;
    if (!OrganisationID) {
      return res
        .status(400)
        .send({ status: false, message: "Please select organisation" });
    } else if (!Amount) {
      return res.status(400).send({
        status: false,
        message: "Please Enter Value Of Amount!",
      });
    } else if (!FyYearID) {
      return res.status(400).send({
        status: false,
        message: "Please select FY year!",
      });
    }  else if (!Quarter) {
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
    const FyYearExist = await FyYear.findOne({
        where: {
            YearID : FyYearID,
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
  
      const recordExists = await checkIfProfitExists(OrganisationID,FyYearID, Quarter);
      if (recordExists) {
        return res
        .status(400)
        .send({ status: false, message: "Record already exists." });
      } 

        // const validPreviousFyYear = await getPreviousFinancialYear(FyYearID)
        // if (!validPreviousFyYear) {
        //     return res
        //     .status(400)
        //     .send({ status: false, message: "Invalid Previous FY." });
        //   } 
        next();

        
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};


const updateprofitabilityData = async (req,res,next)=>{
try{
  const { OrganisationID,Amount, YearID, Quarter, Remarks } = req.body;
  if (!OrganisationID) {
    return res
      .status(400)
      .send({ status: false, message: "Please select organisation" });
  } else if (!Amount) {
    return res.status(400).send({
      status: false,
      message: "Please Enter Value Of Profitability!",
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

    const recordExists = await checkIfProfitExists(OrganisationID, YearID, Quarter);
    if (recordExists) {
      return res
      .status(400)
      .send({ status: false, message: "Record already exists." });
    } 

      next();
} catch (error) {
  return res.status(500).send({ status: false, message: error.message });
}
}
module.exports = {
 addprofitabilityData,
 updateprofitabilityData
};

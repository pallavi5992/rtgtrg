const db = require("../models");
const sequelize = require("sequelize");
const bcrypt = require("bcryptjs");
const helper = require("../helper/helper");
const jwt = require("jsonwebtoken");
const orderBook = db.orderBook;
const Organisation = db.organisation;
const pagination = require("../helper/pagination");
db.organisation.belongsTo(db.orderBook, {
  foreignKey: "OrganisationID",
  as: "OrgNam",
});

db.orderBook.belongsTo(db.organisation, {
  foreignKey: "OrganisationID",
  as: "OrgNam",
});

const orderBookPositionData = async (req, res) => {
  try {
    const {
      OrganisationID,
      NoOfOrderBookFrom,
      NoOfOrderBookTo,
      SelectedMonth,
      Remarks,
    } = req.body;
    const token = req.headers["x-access-token"];
    const decodeToken = jwt.decode(token);
    const userId = decodeToken.id;

    await orderBook.create({
      OrganisationID: OrganisationID,
      NoOfOrderBookFrom: NoOfOrderBookFrom,
      NoOfOrderBookTo: NoOfOrderBookTo,
      SelectedMonth: SelectedMonth,
      Remarks: Remarks,
      Deleted: "1",
      ModifiedBy: userId,
    });

    return res.status(200).send({
      status: true,
      message: "Order Book Added Successfully",
    });
  } catch (error) {
    return res.status(400).send({ status: false, message: error.message });
  }
};
const getAllOrderBookPositionData = async (req, res) => {
  try {
    const { page, size } = req.query;
    const { limit, offset } = pagination.getPagination(page, size);
    const getAllData = await orderBook.findAndCountAll({
      where: {
        Deleted: "1",
      },
      order: [
        ["OrderBookID", "DESC"], // Sorts by COLUMN in ascending order
      ],
      include: [
        {
          model: Organisation,
          required: true,
          attributes: ["OrganisationID", "Name","Code"],
          as: "OrgNam",
        },
      ],
      attributes: [
        "OrderBookID",
        "OrganisationID",
        "NoOfOrderBookFrom",
        "NoOfOrderBookTo",
        "SelectedMonth",
        ["SelectedMonth", "formattedSelectedMonth"],
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
        message: "List of order book position data",
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

const orderBookPositionDataById = async (req, res) => {
  try {
    const { OrderBookID } = req.params;
    if (!OrderBookID) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter OrderBookID" });
    }
    const OderBookExsist = await orderBook.findOne({
      where: {
        OrderBookID: OrderBookID,
      },
      include: [
        {
          model: Organisation,
          required: true,
          attributes: ["OrganisationID", "Name"],
          as: "OrgNam",
        },
      ],
      attributes: [
        "OrderBookID",
        "OrganisationID",
        "NoOfOrderBookFrom",
        "NoOfOrderBookTo",
        "SelectedMonth",
        ["SelectedMonth", "formattedSelectedMonth"],
        "Remarks",
      ],
    });

    if (!OderBookExsist) {
      return res.status(404).send({
        status: false,
        message: `Data ${OrderBookID} not found`,
      });
    }
    return res.status(200).send({
      status: true,
      message: "Data found Successfully",
      data: OderBookExsist,
    });
  } catch (error) {
    res.status(500).send({ status: false, message: error.message });
  }
};

const updateOrderBookPositionDataById = async (req, res) => {
  try {
    const token = req.headers["x-access-token"];
    const decodeToken = jwt.decode(token);
    const userId = decodeToken.id;
    const { OrderBookID } = req.params;
    const { OrganisationID, NoOfOrderBookFrom, NoOfOrderBookTo,SelectedMonth, Remarks } = req.body;
    if (!OrderBookID) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter OrderBookID" });
    }
    const orderBookExsist = await orderBook.findOne({
      where: {
        OrderBookID: OrderBookID,
      },
    });
    if (!orderBookExsist) {
      return res.status(404).send({
        status: false,
        message: `Data ${OrderBookID} not found`,
      });
    }

    await orderBook.update(
      { OrganisationID,NoOfOrderBookFrom, NoOfOrderBookTo,SelectedMonth, Remarks, ModifiedBy: userId },
      { where: { OrderBookID } }
    );

    return res.status(200).send({
      status: true,
      message: `Order book updated successfully`,
    });
  } catch (error) {
    res.status(500).send({ status: false, message: error.message });
  }
};

const deleteOrderBookById = async (req,res)=>{
    try {
        const { OrderBookID } = req.params;
        // if (!OrderBookID) {
        //     return res
        //       .status(400)
        //       .send({ status: false, message: "Please enter OrderBookID" });
        //   }
        //   const orderBookExsist = await orderBook.findOne({
        //     where: {
        //       OrderBookID: OrderBookID,
        //     },
        //   });

        //   console.log(orderBookExsist,"orderBookExsistorderBookExsist")
        //   if (!orderBookExsist) {
        //     return res.status(404).send({
        //       status: false,
        //       message: `Data ${OrderBookID} not found`,
        //     });
        //   }
        //   await orderBook.update(
        //     { Deleted: "0"},
        //     { where: { OrderBookID:OrderBookID } }
        //   );
        await orderBook.update(
            {
              Deleted: "0",
            },
            {
              where: {
                OrderBookID: OrderBookID,
              },
            }
          );
          return res
          .status(200)
          .send({ status: true, message: "Order Book deleted successfully" });
    } catch (error) {
        res.status(500).send({ status: false, message: error.message });
    }
}
module.exports = {
  orderBookPositionData,
  getAllOrderBookPositionData,
  orderBookPositionDataById,
  updateOrderBookPositionDataById,
  deleteOrderBookById
};

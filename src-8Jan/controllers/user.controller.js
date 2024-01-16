const db = require("../models");
const User = db.user;
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const helper = require("../helper/helper");
const pagination = require("../helper/pagination");
const addUser = async (req, res) => {
  try {
    const data = req.body;
    const {
      userName,
      roleId,
      emailId,
      personalNumber,
      password,
      organisation,
      designation,
      mobileNumber,
    } = data;

    await User.create({
      userName: userName,
      roleId: roleId,
      emailId: emailId,
      personalNumber: personalNumber,
      password: password ? bcrypt.hashSync(password, 8) : null,
      organisation: organisation,
      designation: designation,
      mobileNumber: mobileNumber || null,
      createdAt: Date.now(),
    });
    return res
      .status(200)
      .send({ status: true, message: "User added sccessfully!" });
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};

/**
 * function to get allUser with paginations
 * @param {obj} req
 * @returns {json} obj
 */
const getAllUser = async (req, res) => {
  try {
    const { page, size } = req.query;
    const { limit, offset } = pagination.getPagination(page, size);
    const getUsers = await User.findAndCountAll({
      where: {
        isActive: 1,
      }, limit,offset
    });
    const result = pagination.getPagingData(getUsers, page, limit);
    if (getUsers.count !== 0) {
      return res.status(200).json({
        status: true,
        message: "List of users data",
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
    return res.status(500).send({ status: true, message: error.message });
  }
};
const getUserById = async (req, res) => {
  try {
    const token = req.headers["x-access-token"];
    const tokenData = jwt.decode(token);
    const userid = req.params.userid;
    const user = await User.findOne({
      where: {
        id: tokenData.id,
      },
    });
    if (!user) {
      return res.status(401).send({ status: false, message: "Unauthorized" });
    }
    const userDetail = await User.findOne({
      where: {
        id: user.id,
        isActive: true,
      },
    });
    if (!userDetail) {
      return res.status(401).json({
        status: false,
        message: "User not found",
      });
    }
    return res.status(200).json({
      status: true,
      message: userDetail,
    });
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};
const deleteUserByID = async (req, res) => {
  try {
    const userid = req.params.userid;
    const checkUser = await User.findOne({
      where: {
        id: userid,
        isActive: true,
      },
    });
    if (!checkUser) {
      return res.status(404).json({
        status: false,
        message: "User not found",
      });
    }

    const deleteUser = await User.update(
      {
        isActive: false,
      },
      {
        where: {
          id: userid,
        },
      }
    );
    if (deleteUser[0] === 1) {
      return res.status(200).json({
        status: true,
        message: "User deleted Successfully",
      });
    } else {
      return res.status(404).json({
        status: "Failed",
        message: "User Not Deleted",
      });
    }
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};
// Update logged in user data
const updateUser = async (req, res) => {
  try {
    const token = req.headers["x-access-token"];
    const tokenData = jwt.decode(token);
    const data = req.body;
    const { name, oldPassword, newPassword, cPassword, personalNumber } = data;
    const user = await User.findOne({
      where: {
        id: tokenData.id,
      },
    });
    if (!user) {
      return res.status(401).send({ status: false, message: "Unauthorized" });
    }

    const validateCurrentPwd = await bcrypt.compare(
      oldPassword,
      user?.password
    );
    if (!validateCurrentPwd) {
      return res.status(400).send({
        status: false,
        message: "Please enter valid current password!",
      });
    }
    if (newPassword !== cPassword) {
      return res.status(400).send({
        status: false,
        message: "Not matching!",
      });
    }
    await User.update(
      {
        userName: name,
        password: newPassword ? bcrypt.hashSync(newPassword, 8) : null,
        personalNumber: personalNumber,
        updatedAt: Date.now(),
      },
      {
        where: { emailId: user.emailId },
      }
    );
    return res
      .status(200)
      .send({ status: true, message: "User was updated successfully" });
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};

const updateUserById = async (req, res) => {
  try {
    const userid = req.params.id;
    const data = req.body;
    const { roleId, name, personalNumber } = data;
    const userDetail = await User.findOne({
      where: {
        id: userid,
        isActive: true,
      },
    });
    if (!userDetail) {
      return res.status(401).json({
        status: false,
        message: "User not found",
      });
    } else {
      const updateData = await User.update(
        {
          roleId: roleId,
          userName: name,
          personalNumber: personalNumber,
          updatedAt: Date.now(),
        },
        {
          where: { emailId: userDetail.emailId },
        }
      );
      if (updateData[0] == 0) {
        res.status(404).json({
          status: false,
          message: "User not updated",
        });
      } else {
        res.status(200).json({
          status: true,
          message: "Update User Data",
        });
      }
    }
  } catch (error) {
    res.status(500).send({ status: fasle, message: error.message });
  }
};
// app.post("/home", function (req, res) {
//   if (req.session.user == null) {
//     res.redirect("/");
//   } else {
//     accounts.updateAccount(
//       {
//         id: req.session.user._id,
//         name: req.body["name"],
//         email: req.body["email"],
//         pass: req.body["pass"],
//         country: req.body["country"],
//       },
//       function (e, o) {
//         if (e) {
//           res.status(400).send("error-updating-account");
//         } else {
//           req.session.user = o.value;
//           res.status(200).send("ok");
//         }
//       }
//     );
//   }
// });
module.exports = {
  addUser,
  getUserById,
  updateUser,
  deleteUserByID,
  updateUserById,
  getAllUser,
};

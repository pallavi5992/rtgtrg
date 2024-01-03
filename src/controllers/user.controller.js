const db = require("../models");
const User = db.user;
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const helper = require("../helper/helper");
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
    });
    return res
      .status(200)
      .send({ status: true, message: "User added sccessfully!" });
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};

const getLoggedInUser = async (req, res) => {
  console.log(req.params.userid);
  try {
    const data = req.body;
    const userid = req.params.userid;
    const loginUserId = req.user.uid;
    const userDetail = await User.findOne({
      where: {
        id: userid,
      },
    });
    console.log(userDetail);
    res.status(200).send({});
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};

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
    if( newPassword!== cPassword){
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
  getLoggedInUser,
  updateUser,
};

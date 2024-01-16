const db = require("../models");
const User = db.user;
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const helper = require("../helper/helper");

exports.login = async (req, res) => {
  try {
    const { emailId } = req.body;
    const user = await User.findOne({
      where: {
        emailId: emailId,
      },
    });
    const payloads = {
      id: user.id,
      roleId: user.roleId,
      role: await helper.getRole(user.roleId),
    };
    // expiry time=60second
    const token = jwt.sign(payloads, process.env.JWT_Secret_Key, {
      expiresIn: 600,
    });
    await User.update(
      {
        accessToken: token,
      },
      {
        where: {
          id: user?.id,
        },
      }
    );
    const data = {
      id: user.id,
      userName: user.userName,
      roleId: user.roleId,
      role: await helper.getRole(user.roleId),
      accessToken: token,
    };
    return res
      .status(200)
      .send({ status: true, message: "Login successfully", data: data });
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};
exports.logout = async (req, res) => {
  try {
    const token = req.headers["x-access-token"];
    const newToken = null;
    const tokenData = jwt.decode(token);
    const user = await User.findOne({
      where: {
        id: tokenData.id,
      },
    });
    if (!user) {
      return res.status(401).send({ status: false, message: "Unauthorized" });
    }
    await User.update(
      {
        accessToken: newToken,
      },
      {
        where: {
          id: user.id,
        },
      }
    );

    return res
      .status(200)
      .send({ status: true, message: "Logout successfully" });
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};

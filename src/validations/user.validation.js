const db = require("../models");
const User = db.user;
const Role = db.role;
const { default: isEmail } = require("validator/lib/isEmail");
const bcrypt = require("bcryptjs");
const addUser = async (req, res, next) => {
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
      captcha,
      captchaHash,
    } = data;
    if (!roleId) {
      return res
        .status(400)
        .send({ status: false, message: "Please select user role!" });
    } else if (!userName) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter name!" });
    } else if (!emailId) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter email address!" });
    } else if (!isEmail(emailId)) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter email address!" });
    } else if (!personalNumber) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter personal number!" });
    } else if (isNaN(personalNumber)) {
      return res.status(400).send({
        status: false,
        message: "Please enter valid personal number!",
      });
    } else if (personalNumber.length != 10) {
      return res.status(400).send({
        status: false,
        message: "Please enter 10 digits valid personal number!",
      });
    } else if (!organisation) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter organisation name!" });
    } else if (!designation) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter designation name!" });
    } else if (!password) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter password!" });
    }

    const isRoleExist = await Role.findOne({
      where: {
        id: roleId,
      },
    });
    if (!isRoleExist) {
      return res
        .status(400)
        .send({ status: false, message: "Role does not exist!" });
    }

    const isEmailExist = await User.findOne({
      where: {
        emailId: emailId,
      },
    });
    if (isEmailExist) {
      return res
        .status(400)
        .send({ status: false, message: "Email address already exist!" });
    }
    const isPersonalNumberExist = await User.findOne({
      where: {
        personalNumber: personalNumber,
      },
    });
    if (isPersonalNumberExist) {
      return res
        .status(400)
        .send({ status: false, message: "Personal number already exist!" });
    }

    if (!captcha) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter captcha!" });
    }
    if (!captchaHash) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter captcha hash!" });
    }

    const validateCaptch = await bcrypt.compare(
      req.body.captcha,
      req.body.captchaHash
    );

    if (!validateCaptch) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter valid Captcha!" });
    }

    next();
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};
const updateUser = async (req, res) => {
  try {
    const data = req.body;
    const {
      userName,
      cPwd,
      password,
      confirmPwd,
      mobileNumber,
      captcha,
      captchaHash,
    } = data;

    // await User.create({
    //   userName: userName,
    //   roleId: roleId,
    //   emailId: emailId,
    //   personalNumber: personalNumber,
    //   password: password ? bcrypt.hashSync(password, 8) : null,
    //   organisation: organisation,
    //   designation: designation,
    //   mobileNumber: mobileNumber || null,
    // });
    // return res
    //   .status(200)
    //   .send({ status: true, message: "User updated sccessfully!" });
    if (!captcha) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter captcha!" });
    }
    if (!captchaHash) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter captcha hash!" });
    }

    const validateCaptch = await bcrypt.compare(
      req.body.captcha,
      req.body.captchaHash
    );

    if (!validateCaptch) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter valid Captcha!" });
    }

    next();
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};
module.exports = {
  addUser,
  updateUser,
};

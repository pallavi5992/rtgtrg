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

    // if (!captcha) {
    //   return res
    //     .status(400)
    //     .send({ status: false, message: "Please enter captcha!" });
    // }
    // if (!captchaHash) {
    //   return res
    //     .status(400)
    //     .send({ status: false, message: "Please enter captcha hash!" });
    // }

    // const validateCaptch = await bcrypt.compare(
    //   req.body.captcha,
    //   req.body.captchaHash
    // );

    // if (!validateCaptch) {
    //   return res
    //     .status(400)
    //     .send({ status: false, message: "Please enter valid Captcha!" });
    // }

    next();
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};

const getUser = async (req, res) => {
  try {
    const data = req.body;
  } catch (error) {
    res.status(500).send({ status: false, message: error.message });
  }
};
const updateUser = async (req, res, next) => {
  try {
    const data = req.body;
    const { name, oldPassword, newPassword, cPassword, personalNumber } = data;
    if (!name) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter user name!" });
    } else if (!oldPassword) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter current password!" });
    } else if (!newPassword) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter password!" });
    } else if (!cPassword) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter comfirm password!" });
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

    // if (!captcha) {
    //   return res
    //     .status(400)
    //     .send({ status: false, message: "Please enter captcha!" });
    // }
    // if (!captchaHash) {
    //   return res
    //     .status(400)
    //     .send({ status: false, message: "Please enter captcha hash!" });
    // }

    // const validateCaptch = await bcrypt.compare(
    //   req.body.captcha,
    //   req.body.captchaHash
    // );

    // if (!validateCaptch) {
    //   return res
    //     .status(400)
    //     .send({ status: false, message: "Please enter valid Captcha!" });
    // }

    next();
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};
module.exports = {
  addUser,
  updateUser,
};

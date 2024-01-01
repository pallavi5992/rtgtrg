const db = require("../models");
const User = db.user;
const { default: isEmail } = require("validator/lib/isEmail");
const bcrypt = require("bcryptjs");

const login = async (req, res,next) => {
  try {
    const { emailId, password,captcha,captchaHash } = req.body;
    if (!emailId) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter email address!" });
    } else if (!isEmail(emailId)) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter valid email address!" });
    } else if (!password) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter password!" });
    }
    const isUserExist = await User.findOne({
      where: {
        emailId: emailId,
      },
    });
    if(!isUserExist){
        return res
        .status(400)
        .send({ status: false, message: "User not exist!" });
    }
    const isPassword =await bcrypt.compare(password,isUserExist?.password);
    console.log(isPassword);
    if(isPassword){
        return res
        .status(400)
        .send({ status: false, message: "Invalid password!" });
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



module.exports={
    login,
  
}

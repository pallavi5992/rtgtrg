const db = require("../../models");
const User = db.user;
const jwt = require("jsonwebtoken");

const verifyToken = async (req, res, next) => {
  try {
    const token = req.headers["x-access-token"];
    if (!token) {
      return res
        .status(401)
        .send({ status: false, message: "No token provided" });
    }

    const tokenData = jwt.decode(token);
    if (!token) {
      return res.status(401).send({ status: false, message: "Unauthorized" });
    }

    const user = await User.findOne({
      where: {
        id: tokenData.id,
      },
    });
    if (!user) {
      return res
        .status(401)
        .send({ status: false, message: "Unauthorized user" });
    }

    if (user.accessToken == token) {
      jwt.verify(token, process.env.JWT_Secret_Key, (err, decoded) => {
        if (err) {
          return res
            .status(401)
            .send({ status: false, message: "Unauthorized" });
        }
        req.userId = decoded.id;
        next();
      });
    } else {
      return res
        .status(401)
        .send({ status: false, message: "User token not matched!" });
    }
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};

module.exports = {
  verifyToken,
};

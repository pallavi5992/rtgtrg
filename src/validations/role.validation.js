const db = require("../models");
const User = db.user;
const Role = db.role;

const addRole = async (req, res, next) => {
  try {
    const data = req.body;
    const { role, status } = data;
    if (!role) {
      return res
        .status(400)
        .send({ status: false, message: "Please enter role" });
    }
    if (status) {
      if (status != "0" && status != "1") {
        return res
          .status(400)
          .send({ status: false, message: "Please enter valid status" });
      }
    }
    const isRoleExist = await Role.findOne({
      where: {
        role: role,
      },
    });
    if (isRoleExist) {
      return res
        .status(400)
        .send({ status: false, message: "Role already exist" });
    }
    next();
  } catch (error) {
    return res.status(500).send({ status: false, message: error.message });
  }
};

module.exports = {
  addRole,
};

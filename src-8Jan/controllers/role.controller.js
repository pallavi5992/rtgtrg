const db = require("../models");
const Role = db.role;

exports.addRole = async (req, res) => {
  try {
    await Role.create({
      role: req.body.role,
      status:req.body.status||"1"
    });
    return res
      .status(200)
      .send({ status: true, message: "Role added successfully!" });
  } catch (error) {
    return res
      .status(500)
      .send({ status: true, message: error.message });
  }
};

exports.getAllRole=async(req,res)=>{
    try {
        const result=await Role.findAll({
            where:{
                status:"1"
            }
        });
        if(result.length==0){
            return res.status(200).send({status:true,message:"No data found",data:result})
        }
        return res.status(200).send({status:true,message:"Data found successfully",data:result})
    } catch (error) {
        return res
        .status(500)
        .send({ status: true, message: error.message });
    }
}

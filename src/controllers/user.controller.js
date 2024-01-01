const db = require("../models");
const User = db.user;
const bcrypt=require("bcryptjs")


const addUser = async (req, res) => {
    try {
        const data=req.body;
        const {userName,roleId,emailId,personalNumber,password,organisation,designation,mobileNumber}=data
         
        await User.create({
            userName:userName,
            roleId:roleId,
            emailId:emailId,
            personalNumber:personalNumber,
            password:password?bcrypt.hashSync(password,8):null,
            organisation:organisation,
            designation:designation,
            mobileNumber:mobileNumber||null
        });
        return res.status(200).send({status:true,message:"User added sccessfully!"});        
    } catch (error) {
        return res.status(500).send({status:false,message:error.message});
    }
};
const updateUser = async (req,res)=>{
try {
    const id = req.params.id;
    await User.update(req.body, {
        where: { id: id }
      })
} catch (error) {
    return res.status(500).send({status:false,message:error.message})
}
}
module.exports = {
    addUser,
    updateUser
}
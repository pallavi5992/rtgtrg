const db=require("../models");
const Role=db.role;



async function getRole(roleId){
    const result=await Role.findOne({
        where:{
            id:parseInt(roleId)
        }
    })

    if(result){
        return result.role;
    }
    return ""    
};



module.exports={
    getRole
}
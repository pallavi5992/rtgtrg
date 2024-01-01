require("dotenv").config();
const {Sequelize,DataTypes}=require("sequelize");
const {sequelize}=require("../config/db.config")


const db={};
db.Sequelize=Sequelize; 
db.sequelize=sequelize;

db.user=require("./user.model")(sequelize,Sequelize,DataTypes);
db.role=require("./role.model")(sequelize,Sequelize,DataTypes);

module.exports=db
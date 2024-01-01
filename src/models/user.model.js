
module.exports = (sequelize, Sequelize, DataTypes) => {
    const User = sequelize.define("ddpdashboard_users", {
        id: {
            type:Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement:true
        },
        userName: {  
            type: DataTypes.TEXT,
            allowNull: false,

        },
        roleId:{
            type:DataTypes.INTEGER,
            allowNull:false
        },
        emailId:{
            type: DataTypes.TEXT,
            allowNull: false,
        },
        personalNumber:{
            type:Sequelize.STRING,
            allowNull:false
        },
        accessToken:{
            type:Sequelize.TEXT,
            allowNull:true
        },
        mobileNumber:{
            type:Sequelize.STRING,
            allowNull:true
        },
        password:{
            type: DataTypes.TEXT,
            allowNull: false,
        },
        address:{
            type:Sequelize.TEXT,
            allowNull:true
        },
        organisation:{
            type:Sequelize.STRING,
            allowNull:true
        },
        designation:{
            type:Sequelize.STRING,
            allowNull:true
        },
        deleted:{
            type:Sequelize.ENUM("0","1"),
            comment:"0-notDeleted,1-deleted",
            allowNull:true
        },
       
        mobileOTP:{
            type:DataTypes.STRING,
            allowNull:true
        },
        verifyOTP:{
            type:DataTypes.STRING,
            allowNull:true
        },
        loginFailedCount:{
            type:DataTypes.INTEGER,
            allowNull:true
        },
        loginFailedDate:{
            type:DataTypes.DATE,
            allowNull:true
        },
        emialLinkOTP:{
            type:DataTypes.STRING,
            allowNull:true
        }
    }) 
    return User
}
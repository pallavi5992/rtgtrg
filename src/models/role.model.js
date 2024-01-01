module.exports = (sequelize, Sequelize, DataTypes) => {
    const Role = sequelize.define("ddpdashboard_roles", {
        id: {
            type:Sequelize.INTEGER,
            primaryKey: true,
           autoIncrement:true
        },
        role: {
            type: DataTypes.STRING,
            allowNull: false,

        },
        status:{
            type:Sequelize.ENUM("0","1"),
            comment:"0-pending,1-active",
            defaultValue:"1"
        },
       
    }) 
    return Role
}
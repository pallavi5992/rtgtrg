module.exports = (sequelize, Sequelize, DataTypes) => {
    const indigenization = sequelize.define("ddpdashboard_indigenization", {
        IndigenizationID: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      OrganisationID: {
        type: Sequelize.INTEGER,
        allowNull: false,
      },
      ProjectName: {
        type: DataTypes.TEXT,
        allowNull: false,
      },
      ProjectValue: {
        type: Sequelize.INTEGER,
        allowNull: false,
      },
      SelectedMonth: {
          type: DataTypes.STRING,
          allowNull: false,
      },
      Remarks: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      Deleted: {
        type: Sequelize.ENUM("0", "1"),
        comment: "0-deleted,1-notDeleted",
        allowNull: true,
      },
      ModifiedBy: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
    },
    {
      // Define additional options for your model (optional)
      timestamps: true, // Add timestamps (createdAt, updatedAt) to your model (optional)
      getterMethods: {
        type: DataTypes.VIRTUAL,
        formattedSelectedMonth() {
          // Convert the selectedMonth string to a Date object
         const dateObject = new Date(this.getDataValue('SelectedMonth'));
         // const [year, month] = this.getDataValue('SelectedMonth').split('-');
    
          // Create a new Date object with the year and month parts
      //    const dateObject = new Date(parseInt(year), parseInt(month) - 1);
          // Format the Date object to display "Month Year"
          return new Intl.DateTimeFormat('en-US', { month: 'long', year: 'numeric' }).format(dateObject);
        },
      },
    });
    return indigenization;
  };
  
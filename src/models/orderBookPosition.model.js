module.exports = (sequelize, Sequelize, DataTypes) => {
  const orderBook = sequelize.define("ddpdashboard_orderbook", {
    OrderBookID: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    DPSU: {
      type: Sequelize.INTEGER,
      allowNull: false,
    },
    OrderBookFrom: {
      type: Sequelize.INTEGER,
      allowNull: false,
    },
    OrderBookTo: {
        type: Sequelize.INTEGER,
        allowNull: false,
    },
    Month: {
        type: Sequelize.INTEGER,
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
  });
  return orderBook;
};

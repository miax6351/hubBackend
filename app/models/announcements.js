
module.exports = (sequelize, Sequelize) => {
    const Announcement = sequelize.define("announcement", {
      id: { type: Sequelize.INTEGER, allowNull: false, primaryKey: true }
    },
    {
        tableName: "announcements",
        frezeTableName: true,
        timestamps: false
    });

    return Announcement;
  };
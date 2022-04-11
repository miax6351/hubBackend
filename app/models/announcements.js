module.exports = (sequelize, Datatypes) => {

    const Announcement = sequelize.define("announcement", {
      id: { type: Datatypes.INTEGER, allowNull: false, primaryKey: true }
    },
    {
        tableName: "announcement",
        frezeTableName: true,
        timestamps: false
    });

    return Announcement;
  };


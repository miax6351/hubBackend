module.exports = (sequelize, Datatypes) => {

    const Announcement = sequelize.define("announcement", {
      studentId: { type: Datatypes.STRING, allowNull: false, primaryKey: true },
      id: { type: Datatypes.INTEGER, allowNull: false, primaryKey: true }
    },
    {
        tableName: "announcement",
        frezeTableName: true,
        timestamps: false
    });

    return Announcement;
  };


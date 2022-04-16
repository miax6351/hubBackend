module.exports = (sequelize, Datatypes) => {

    const Announcement = sequelize.define("announcement", {

      studentId: {type: Datatypes.STRING, allowNull: false, primaryKey: true },
      id: { type: Datatypes.INTEGER, allowNull: false, primaryKey: true },
      title: { type: Datatypes.STRING },
      message: { type: Datatypes.TEXT },
      sender: { type: Datatypes.STRING},
      //course: { type: Datatypes.STRING }
      isRead: { type: Datatypes.BOOLEAN },
      //time: { type: Datatypes.DATE } 

    },
    {
        tableName: "announcement",
        frezeTableName: true,
        timestamps: false
    });

    /*Announcement.associate = function (models) {
      models.announcement.belongTo()
    }*/

    return Announcement;
  };


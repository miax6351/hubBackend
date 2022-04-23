

const Grade = sequelize.define("grade", {

    studentId: {type: Datatypes.STRING, allowNull: false, primaryKey: true },
    courseId: { type: Datatypes.INTEGER, allowNull: false, primaryKey: true },
    courseTitle: { type: Datatypes.STRING },
    message: { type: Datatypes.TEXT },
    sender: { type: Datatypes.STRING},
    isRead: { type: Datatypes.BOOLEAN }

  },
  {
      tableName: "announcement",
      frezeTableName: true,
      timestamps: false
  });

Announcement.associate = function (models) {
    models.announcement.belongsTo(models.student)
}
module.exports = (sequelize, Datatypes) => {
const Grade = sequelize.define("grade", {

    studentId: {type: Datatypes.STRING, allowNull: false, primaryKey: true },
    courseId: { type: Datatypes.INTEGER, allowNull: false, primaryKey: true },
    courseName: { type: Datatypes.STRING },
    gradeDK: { type: Datatypes.INTEGER},
    InternationalGrade: { type: Datatypes.STRING},

  },
  {
      tableName: "grade",
      frezeTableName: true,
      timestamps: false
  });

Grade.associate = function (models) {
    models.grade.belongsTo(models.student)
    models.grade.hasOne(models.course)
}
return Grade;
};


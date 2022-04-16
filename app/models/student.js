module.exports = (sequelize, Datatypes) => {

    const Student = sequelize.define("student", {

      id: {type: Datatypes.STRING, allowNull: false, primaryKey: true },
      firstName: { type: Datatypes.STRING },
      lastName: { type: Datatypes.TEXT },
      mail: { type: Datatypes.STRING},
      studyclassId: { type: Datatypes.STRING} 

    },
    {
        tableName: "student",
        frezeTableName: true,
        timestamps: false
    });

    Student.associate = function (models) {
      models.student.hasMany(models.announcement)
      //models.student.belongsTo(models.studentCourses)
      models.student.belongsTo(models.studyclass)
      models.student.hasOne(models.lessonplan)
    }

    return Student;
  };
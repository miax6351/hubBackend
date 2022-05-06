
module.exports = (sequelize, Datatypes) => {

    const StudentCourses = sequelize.define("studentCourses", {
      studentId: { type: Datatypes.STRING(25), allowNull: false, primaryKey: true },
      courseId: { type: Datatypes.INTEGER, allowNull: false, primaryKey: true} ,
    },
    {
        tableName: "studentCourses",
        frezeTableName: true,
        timestamps: false
    });

    return StudentCourses;
  };

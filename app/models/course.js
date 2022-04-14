module.exports = (sequelize, Datatypes) => {

    const Course = sequelize.define("course", {
      id: { type: Datatypes.INTEGER, allowNull: false, primaryKey: true },
      courseName : { type: Datatypes.STRING, allowNull: true, primaryKey: false },
      courseDescription: { type: Datatypes.STRING, allowNull: false},
      ects: { type: Datatypes.INTEGER, allowNull: false },
      instructorId: { type: Datatypes.STRING, allowNull: false},
    },
    {
        tableName: "course",
        frezeTableName: true,
        timestamps: false
    });

    return Course;
  };


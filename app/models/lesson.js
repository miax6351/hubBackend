
module.exports = (sequelize, Datatypes) => {

    const Lesson = sequelize.define("lesson", {
      courseId: { type: Datatypes.INTEGER, allowNull: false, primaryKey: true },
      weekNo : { type: Datatypes.INTEGER, allowNull: true },
      locationBuilding: { type: Datatypes.STRING, allowNull: false},
      locationRoom: { type: Datatypes.INTEGER, allowNull: false },
      
    },
    {
        tableName: "lesson",
        frezeTableName: true,
        timestamps: false
    });

    Lesson.associate = function(models){
        models.lesson.belongsTo(models.course)
    }

    return Lesson;
  };

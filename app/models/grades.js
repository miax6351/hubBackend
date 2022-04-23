
module.exports = (sequelize, Datatypes) => {

    const GradeTable = sequelize.define("grades", {
      gradeDK: {type: Datatypes.INTEGER, allowNull: false, primaryKey: true },
      internationalGrade: { type: Datatypes.INTEGER, allowNull: false, primaryKey: true }
    },
    {
        tableName: "grades",
        frezeTableName: true,
        timestamps: false
    });

    GradeTable.associate = function (models) {
      models.grades.hasMany(models.grade)
    }

    return GradeTable;
  };

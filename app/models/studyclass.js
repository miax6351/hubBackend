module.exports = (sequelize, Datatypes) => {

    const Studyclass = sequelize.define("studyclass", {

      id: {type: Datatypes.STRING, allowNull: false, primaryKey: true },
      semester: { type: Datatypes.STRING(25), allowNull: false },
      programmeId: { type: Datatypes.STRING, allowNull: false}
    },
    {
        tableName: "studyclass",
        frezeTableName: true,
        timestamps: false
    });

    Studyclass.associate = function(models){
        models.studyclass.hasMany(models.student)
    }
    

    return Studyclass;
  };

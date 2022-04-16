module.exports = (sequelize, Datatypes) => {

    const Instructor = sequelize.define("instructor", {
      id: { type: Datatypes.STRING, allowNull: false, primaryKey: true },
      firstName : { type: Datatypes.STRING, allowNull: false},
      lastName: { type: Datatypes.STRING, allowNull: false},
      mail: { type: Datatypes.STRING, allowNull: false },
      phone: { type: Datatypes.STRING, allowNull: true},
    },
    {
        tableName: "intructor",
        frezeTableName: true,
        timestamps: false
    });

    return Instructor;

    Instructor.associate = function(models){
        models.instructor.belongsTo(models.course)
    }
  };



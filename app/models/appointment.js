module.exports = (sequelize, Datatypes) => {

    const Appointment = sequelize.define("appointment", {
      studentId: { type: Datatypes.STRING, allowNull: false, primaryKey: true },
      appointmentId: { type: Datatypes.INTEGER, allowNull: true, primaryKey: true },
      startDate: { type: Datatypes.DATE, allowNull: false},
      endDate: { type: Datatypes.DATE, allowNull: false },
      title: { type: Datatypes.STRING, allowNull: false},
      courseId: { type: Datatypes.STRING, allowNull: true},
      
    },
    {
        tableName: "appointment",
        frezeTableName: true,
        timestamps: false
    });


    return Appointment;
  };


  

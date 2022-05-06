const model = require("../models");



const getAnnouncementThroughStudent = async (req, res) => {
    let token = req.body.token;
    let student = await model.student.findOne({where: { token: JSON.stringify(token)}});

    let announcement = await model.announcement.findAll({where: {studentId: student.id}})
    res.status(200).send(announcement);
}

const changeToken = async (req, res) =>{
  let id = req.params.id;
  let idToken = req.body.token;
        let student = await model.student.findOne({ where: { id: id} });

        student.token = idToken;
        await student.save();

        res.status(200).send(student);
}

const createStudent = async (req, res) => {
  const user ={
    id: req.body.id,
    firstName: req.body.firstName,
    lastName: req.body.lastName,
    mail: req.body.mail,
    studyclassId: "",
    //token: req.body.token
  }
  
  try{
    let student = await model.student.create(user);
    res.status(200).send(student);
  } catch{
    return res.status(400).send({
      message: 'Unable to create student'
  })
  }
}

module.exports = {
    getAnnouncementThroughStudent,
    createStudent,
    changeToken
}
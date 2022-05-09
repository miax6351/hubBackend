const model = require("../models");
const student = require("../models/student");
const studyclass = require("../models/studyclass");

const getStudentInformation = async (req, res) => {
  const token = req.params.token;
    let student = await model.student.findOne({where: { token: token}});
    res.status(200).send(student);
}

const getAnnouncementThroughStudent = async (req, res) => {
    const token = req.params.token;
    let student = await model.student.findOne({where: { token: token}});
    
    let announcement = await model.announcement.findAll({where: {studentId: student.id}})
    res.status(200).send(announcement);
}

const changeToken = async (req, res) =>{
  let id = req.params.id;
  let idToken = req.body.token;
  console.log('ffafsdef')
        let student = await model.student.findOne({ where: { id: id} });
        student.token = idToken;
        await student.save();
        console.log('efter')
        res.status(200).send(student);
}

const createStudent = async (req, res) => {
  const user ={
    id: req.body.id,
    firstName: req.body.firstName,
    lastName: req.body.lastName,
    mail: req.body.mail,
    studyclassId: ""
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
    changeToken,
    getStudentInformation
}
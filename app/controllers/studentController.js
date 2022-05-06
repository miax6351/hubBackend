const model = require("../models");
const student = require("../models/student");
const studyclass = require("../models/studyclass");


const getAnnouncementThroughStudent = async (req, res) => {
    let token = req.body.token
    let student = await model.student.findOne(
        {
            where: { token: token},

    include: [
      {
        model: model.announcement,
        attributes: ["title"]
      }
    ]});
    res.status(200).send(student);
}

const changeToken = async (req, res) =>{
  let id = req.params.id;
  let token = reg.body.changeToken;
        let student = await model.student.findOne({ where: { id: id} });

        student.token = token;
        await student.save();

        res.status(200).student;
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
    res.status(201).send(student);
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
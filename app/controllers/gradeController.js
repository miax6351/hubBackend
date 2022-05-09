const model = require("../models");
const course = require("../models/course");
const student = require("../models/student");

    
    const getAllGrades = async (reg, res) => { 
         

        let grade = await model.grade.findAll({
            where: {studentId: "s205353"},
            include: model.course
        })
        res.status(200).send(grade);
    }

    const getGrades = async (req, res) =>{
        let token = req.params.token;
        let student = await model.student.findOne({ where: {token: token} });
        console.log(student.id);
        let grade = await model.grade.findAll({
            where: {studentId: student.id},
            include: model.course
        })
        res.status(200).send(grade);
    }

    module.exports = {
        getAllGrades,
        getGrades
    }

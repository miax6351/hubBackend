const model = require("../models");
const course = require("../models/course");
const student = require("../models/student");

    
    const getAllGrades = async (reg, res) => { 
        let grades = await model.grade.findAll({
            include: {
                model: student, required: true, attributes:['studentId'],
                model: course, required: true, attributes:['courseName']}
                    
        });
        res.status(200).send(grades);
    }

    const getGrades = async (req, res) =>{
        let token = req.params.token;
        let student = await model.student.findOne({ where: {token: token} });

        let grade = await model.grade.findAll(
            {where: {studentId: student.id}}
            )
        res.status(200).send(grade);
    }

    module.exports = {
        getAllGrades,
        getGrades
    }

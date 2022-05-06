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

    const getOneGrade = async (req, res) =>{
        let id = "s205339"
        let grade = await model.grade.findOne({ where: {id: id} });
        res.status(200).send(grade);
    }

    module.exports = {
        getAllGrades,
        getOneGrade
    }

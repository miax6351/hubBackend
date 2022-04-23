const model = require("../models");
const course = require("../models/course");
const gradesTable = require("../models/grades");
    

    
    const getAllGrades = async (reg, res) => { 
        let grades = await model.grade.findAll({
            include: {
                model: gradesTable, required: true,
                model: course, required: true}
                    
        });
        res.status(200).send(grades);
    }

    const getGrade = async (reg, res) => {
        let id = reg.params.id;
        let grade = await model.grade.findOne({where: { studentId: id}})
        res.status(200).send(grade);
    }

    module.exports = {
        getAllGrades,
        getGrade,
    }

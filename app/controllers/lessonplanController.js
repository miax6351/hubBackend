const model = require("../models")
    

    const getAllLessonPlanData = async (reg, res) => {
        let lessonplanData = await model.lessonplan.findAll({});
        res.status(200).send(lessonplanData);
    }

    module.exports = {
        getAllLessonPlanData
    }

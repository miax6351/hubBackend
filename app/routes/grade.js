const gradeController = require("../controllers/gradeController");
const router = require("express").Router();


router.get('/', gradeController.getAllGrades);

router.get('/getGrade', gradeController.getOneGrade);








module.exports = router;

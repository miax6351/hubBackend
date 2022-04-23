const gradeController = require("../controllers/gradeController");
const router = require("express").Router();


router.get('/', gradeController.getAllGrades);

router.get('/:id', gradeController.getGrade);







module.exports = router;

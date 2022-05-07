const gradeController = require("../controllers/gradeController");
const router = require("express").Router();


router.get('/', gradeController.getAllGrades);

router.get('/getGrades/:token', gradeController.getGrades);








module.exports = router;

const lessonPlanController = require("../controllers/lessonplanController");
const router = require("express").Router();


router.get('/',lessonPlanController.getAllLessonPlanData);


module.exports = router;








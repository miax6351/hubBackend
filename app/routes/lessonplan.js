const lessonPlanController = require("../controllers/lessonplanController");
const router = require("express").Router();


router.get('/:token',lessonPlanController.getAllLessonPlanData);

router.post('/postLessonplanRow',lessonPlanController.postLessonplanRow);


module.exports = router;








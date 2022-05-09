const courseController = require("../controllers/courseController");
const router = require("express").Router();


router.get('/:token', courseController.getAllCourses);


module.exports = router;








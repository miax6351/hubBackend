
const studentController = require("../controllers/studentController")
const router = require("express").Router();

router.get("/:token/announcements", studentController.getAnnouncementThroughStudent);

router.get("/:token/mylessonplan", studentController.getLessonPlanThroughStudent);

router.get("/:token", studentController.getStudentInformation);

router.post("/createStudent", studentController.createStudent);

router.put('/changeToken/:id', studentController.changeToken);

module.exports = router;
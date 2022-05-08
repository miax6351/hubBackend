
const studentController = require("../controllers/studentController")
const router = require("express").Router();

router.get("/:token/announcements", studentController.getAnnouncementThroughStudent);
router.get("/:token", studentController.getStudentInformation);

router.post("/createStudent", studentController.createStudent)

module.exports = router;
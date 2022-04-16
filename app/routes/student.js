
const studentController = require("../controllers/studentController")
const router = require("express").Router();

router.get("/", studentController.getAnnouncementThroughStudent)

module.exports = router;
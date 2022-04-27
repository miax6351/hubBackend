
const studentController = require("../controllers/studentController")
const router = require("express").Router();

router.get("/", studentController.getAnnouncementThroughStudent)

router.post("/createStudent", studentController.createStudent)

router.get("/grades:id", studentController.getAllGradesThroughStudent)

module.exports = router;
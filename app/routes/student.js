
const studentController = require("../controllers/studentController")
const router = require("express").Router();

router.get("/", studentController.getAnnouncementThroughStudent);

router.post("/createStudent", studentController.createStudent);

router.put('/changeToken/:id', studentController.changeToken);

module.exports = router;
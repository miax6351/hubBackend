const announcementController = require("../controllers/announcementsController");
const router = require("express").Router();


router.get('/', announcementController.getAllAnnouncements);


module.exports = router;








const router = require("express").Router();

router.get("/api/announcement", require("../controllers/announcementsController").findAll);


module.exports = router;








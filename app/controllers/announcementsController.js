const model = require("../models")
    

    
    const getAllAnnouncements = async (reg, res) => {
        
        let announcements = await model.announcement.findAll({});
        res.status(200).send(announcements);
    }

    module.exports = {
        getAllAnnouncements
    }

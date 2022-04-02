const model = require("../models")
    

    
    const getAllAnnouncements = async (reg, res) => {
        
        let announcements = await model.announcement.findAll({});
        res.status(200).send(announcements);
    }

    module.exports = {
        getAllAnnouncements
    }
    

    /*exports.findAll = (req, res) => {
        const id = req.query.id;
        var condition = id ? { id: { [Op.like]: `%${id}%` } } : null;
        Announcement.findAll({ where: condition })
          .then(data => {
            res.send(data);
          })
          .catch(err => {
            res.status(500).send({
              message:
                err.message || "Some error occurred while retrieving announcements."
            });
          });
    };*/


    /*module.exports = async (reg, res) => {
        try{
            const annnouncements = await sequelize.query("SELECT * FROM `announcements`", { type: QueryTypes.SELECT });
            const a = await getAll(annnouncements);
        } catch(error){
            console.log(error);
        }

    }*/

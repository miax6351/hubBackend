    const { sequelize } = require("../models");
    const db = require("../models")
    const Announcement = db.announcements;
    const Op = db.Sequelize.Op;

    exports.findAll = (req, res) => {
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
    };

    /*sequelize.query("SELECT * FROM `announcements`", { type: sequelize.QueryTypes.SELECT})
    .then(function(announcement) {
      // We don't need spread here, since only the results will be returned for select queries
      console.log(announcement)
    })*/


    /*module.exports = async (reg, res) => {
        try{
            const annnouncements = await sequelize.query("SELECT * FROM `announcements`", { type: QueryTypes.SELECT });
            const a = await getAll(annnouncements);
        } catch(error){
            console.log(error);
        }

    }*/

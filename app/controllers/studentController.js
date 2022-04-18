const model = require("../models")


const getAnnouncementThroughStudent = async (reg, res) => {
    let student = await model.student.findOne(
        {
            where: { id: 's205353'},

    include: [
      {
        model: model.announcement,
        attributes: ["title"]
      }
    ]});
    res.status(200).send(student);
}

module.exports = {
    getAnnouncementThroughStudent
}
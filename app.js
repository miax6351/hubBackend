//const helmet = require("helmet");
const models = require("./app/models");
const express = require("express");
const cors = require("cors");

const app = express();

var corsOptions = {
    origin: 'http://localhost:8081'
  };

models.sequelize.sync({force: false}).then(() => {
    console.log("yes, sync works");
   })

//middelware
app.use(cors(corsOptions));

app.use(express.json());

app.use(express.urlencoded({ extended: true}));

app.get('/', (req, res) => {
  res.json({ message: "Welcome to StudentHub" });
});

//app.use(helmet());

app.use("/api/announcements", require("./app/routes/announcement"));


module.exports = app;
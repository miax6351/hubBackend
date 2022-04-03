//const helmet = require("helmet");
const models = require("./app/models");
const express = require("express");


const app = express();

models.sequelize.sync({force: false}).then(() => {
    console.log("yes, sync works");
   })

//middelware
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  next();
});

app.use(express.json());

app.use(express.urlencoded({ extended: true}));

app.get('/', (req, res) => {
  res.json({ message: "Welcome to StudentHub" });
});

//app.use(helmet());

app.use("/api/announcements", require("./app/routes/announcement"));


module.exports = app;
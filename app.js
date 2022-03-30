const app = require("express")();
const helmet = require("helmet");
const db = require("./app/models");
const express = require("express");


db.sequelize.sync();

// parse requests of content-type - application/json
//app.use(express.json()); 

// parse requests of content-type - application/x-www-form-urlencoded
//app.use(express.urlencoded({ extended: true }));

app.use(helmet());

app.use("/api/announcement", require("./app/routes/announcement"));

module.exports = app;
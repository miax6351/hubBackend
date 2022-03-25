const express = require("express");
const helmet = require("helmet")
/*const cors = require("cors");*/

const app = express();
const { version } = require("./package.json")

app.use(helmet());

/*var corsOptions = {
  origin: "http://localhost:8081"
};*/

/*app.use(cors(corsOptions));*/

// parse requests of content-type - application/json
app.use(express.json()); 

// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to StudentHub" });
});

require("./app/routes/tutorial.routes.js")(app);

// set port, listen for requests
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`app started: ${version}, Server is running on port ${PORT}.`);
});

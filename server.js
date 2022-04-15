
const app = require("./app");
const { version } = require("./package.json")
/*const cors = require("cors");*/
/*var corsOptions = {
  origin: "http://localhost:8081"
};*/

//app.use(cors(corsOptions));
// simple route
/*app.get("/", (req, res) => {
  res.json({ message: "Welcome to StudentHub" });
});*/

// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`app started: ${version} Server is running on port ${PORT}.`);
});

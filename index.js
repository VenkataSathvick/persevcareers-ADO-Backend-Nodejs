const courses = require("./routes/courses");
const connection = require("./db");
const cors = require("cors");
const express = require("express");
const app = express();

connection();

app.use(express.json());
app.use(cors());
app.use("/courses", courses);
const port = process.env.PORT || 3100;
app.listen(port, () => console.log(`Our backend api is listening via port ${port}`));

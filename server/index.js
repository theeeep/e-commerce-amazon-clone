const express = require("express");
const mongoose = require("mongoose");

//Imports from others files
const authRouter = require("./routes/auth");

//INIT
const PORT = 3000;
const app = express();
const DB =
  "mongodb+srv://deepak:deepak1@cluster0.nj9yq2z.mongodb.net/?retryWrites=true&w=majority";

app.use(express.json());
app.use(authRouter);

// DB connection
mongoose
  .connect(DB)
  .then(() => {
    console.log("Database Connected...");
  })
  .catch((e) => {
    console.log(e);
  });
app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server Connected at Port  ${PORT}`);
});

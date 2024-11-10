let express = require("express");
let app = new express();
app.set("view engine","ejs")
// set up database connection
const knex = require("knex")({
 client: "mysql",
 connection: {
  host:"pokemon-db.c1g0y6ay8poy.us-east-2.rds.amazonaws.com",
  user: "admin",
  password: "Password1",
  database:"pokedb",
  port: 3306,
 },
});
app.get("/",(req,res) => {
knex
 .select()
 .from("venues")
 .then((result) => {
  res.render("index", {aConcerts: result});
 });
});
app.listen(3000);

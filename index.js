let express = require("express");
let app = new express();                                                                     

// set up database connection
const knex = require("knex")({
 client: "mysql",
 connection: {
  host:"concert-db-instance-1.c61dq6ysma4i.us-east-2.rds.amazonaws.com",
  user: "admin",
  password: "pokem0n1stheb3st",
  database:"pokedb",
  port: 3306,
 },
});

app.get("/",(req,res) => {
 knex
 .select()
 .from("venues")
 .then((result) => {
  console.log(result);
  res.send(result);
 }); 
});
app.listen(3000);

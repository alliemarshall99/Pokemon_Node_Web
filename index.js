let express = require("express");
let app = new express();
app.set("view engine", "ejs");

// Set up database connection
const knex = require("knex")({
  client: "mysql",
  connection: {
    host: "pokemon-db.c1g0y6ay8poy.us-east-2.rds.amazonaws.com",
    user: "admin",
    password: "Password1",
    database: "pokedb",
    port: 3306,
  },
});

app.get("/", (req, res) => {
  // Query the Pokémon table for image and name data
  knex
    .select("image_url", "pokemon_name", "pokedex_number") // Adjust these to match your table columns
    .from("pokemon") // Ensure this is your correct Pokémon table name
    .then((result) => {
      // Render the EJS template with Pokémon data
      res.render("index", { images: result });
    })
    .catch((error) => {
      console.error("Error fetching Pokémon data:", error);
      res.status(500).send("Error fetching data");
    });
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});

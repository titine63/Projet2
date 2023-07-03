const AbstractManager = require("./AbstractManager");

class RestaurantsManager extends AbstractManager {
  constructor() {
    super({ table: "restaurants" });
  }

  insert(restaurants) {
    return this.database.query(
      `insert into ${this.table} ( name, street, postal_code, city, description, email, phone_number, website, image) values (?,?,?,?,?,?,?,?,?,?,?)`,
      [
        restaurants.name,
        restaurants.street,
        restaurants.postal_code,
        restaurants.city,
        restaurants.discription,
        restaurants.email,
        restaurants.phone_number,
        restaurants.website,
        restaurants.image,
        restaurants.latitude,
        restaurants.longitude,
      ]
    );
  }
}
module.exports = RestaurantsManager;

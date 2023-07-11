const AbstractManager = require("./AbstractManager");

class AccommodationManager extends AbstractManager {
  constructor() {
    super({ table: "accommodation" });
  }

  insert(accommodation) {
    return this.database.query(
      `INSERT INTO ${this.table} (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude) 
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        accommodation.name,
        accommodation.street,
        accommodation.postal_code,
        accommodation.city,
        accommodation.description,
        accommodation.email,
        accommodation.phone_number,
        accommodation.website,
        accommodation.image,
        accommodation.latitude,
        accommodation.longitude,
      ]
    );
  }

  update(accommodation) {
    return this.database.query(
      `UPDATE ${this.table} 
      SET name = ?, street = ?, postal_code = ?, city = ?, description = ?, email = ?, phone_number = ?, website = ?, image = ?, latitude = ?, longitude = ? 
      WHERE id = ?`,
      [
        accommodation.name,
        accommodation.street,
        accommodation.postal_code,
        accommodation.city,
        accommodation.description,
        accommodation.email,
        accommodation.phone_number,
        accommodation.website,
        accommodation.image,
        accommodation.latitude,
        accommodation.longitude,
        accommodation.id,
      ]
    );
  }

  delete(id) {
    return this.database.query(`DELETE FROM ${this.table} WHERE id = ?`, [id]);
  }

  search(searchTerm) {
    return this.database.query(
      `SELECT * FROM ${this.table} WHERE name LIKE?;`,
      [`%${searchTerm}%`]
    );
  }
}

module.exports = AccommodationManager;

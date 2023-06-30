/* eslint-disable camelcase */
/* eslint-disable prettier/prettier */
const AbstractManager = require("./AbstractManager");

class SitesManager extends AbstractManager {
  constructor() {
    super({ table: "sites" });
  }

  findByCategory(category_id) {
    return this.database.query(`select * from  ${this.table} where category_id = ?`, [
      category_id,
    ]);
  }

  insert(sites) {
    return this.database.query(`insert into ${this.table} (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude, category_id) values (?,?,?,?,?,?,?,?,?,?,?,?)`, [
      sites.name, sites.street, sites.postal_code, sites.city, sites.description, sites.email, sites.phone_number, sites.website, sites.image, sites.latitude, sites.longitude, sites.category_id
    ]);
  }

  update(sites) {
    return this.database.query(
      `update ${this.table} set name = ? where id = ?`,
      [sites.name, sites.id]
    );
  }
}

module.exports = SitesManager;

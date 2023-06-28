/* eslint-disable prettier/prettier */
const AbstractManager = require("./AbstractManager");

class SitesManager extends AbstractManager {
  constructor() {
    super({ table: "sites" });
  }

  insert(sites) {
    return this.database.query(`insert into ${this.table} (name) values (?)`, [
      sites.name,
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

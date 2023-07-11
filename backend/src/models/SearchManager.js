const AbstractManager = require("./AbstractManager");

class SearchManager extends AbstractManager {
  constructor() {
    super({ table: "item" });
  }

  search(searchTerm) {
    return this.database.query(
      // `SELECT * FROM restaurant INNER JOIN accommodation WHERE name LIKE?;`,
      `SELECT * FROM restaurant WHERE name LIKE?;`,
      [`%${searchTerm}%`]
    );
  }
}

module.exports = SearchManager;

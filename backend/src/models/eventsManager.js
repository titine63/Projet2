const AbstractManager = require("./AbstractManager");

class eventsManager extends AbstractManager {
  constructor() {
    super({ table: "events" });
  }

  insert(events) {
    return this.database.query(
      `insert into ${this.table} (name, date, image, latitude, longitude) values (?, ?, ?, ?, ?)`,
      [
        events.name,
        events.date,
        events.image,
        events.latitude,
        events.longitude,
      ]
    );
  }
}

module.exports = eventsManager;

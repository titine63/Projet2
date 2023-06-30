/* eslint-disable prettier/prettier */
const AbstractManager = require("./AbstractManager");

class UsersManager extends AbstractManager {
  constructor() {
    super({ table: "users" });
  }

  insert(user) {
    return this.database.query(`insert into ${this.table} (email) values (?)`, [
      user.email,
    ]);
  }

  update(user) {
    return this.database.query(
      `update ${this.table} set email = ? where id = ?`,
      [user.email, user.id]
    );
  }
}

module.exports = UsersManager;
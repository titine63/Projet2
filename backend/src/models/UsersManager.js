/* eslint-disable prettier/prettier */
const AbstractManager = require("./AbstractManager");

class UsersManager extends AbstractManager {
  constructor() {
    super({ table: "users" });
  }

  readUsersByEmail(email) {
    return this.database.query(`select * from ${this.table} where email = ?`, [
      email,
    ]);
  }

  insert({ firstname, lastname, email, hashedPassword }) {
    return this.database.query(
      `insert into ${this.table} (firstname, lastname, email, hashedPassword) values (?, ?, ?, ?)`,
      [firstname, lastname, email, hashedPassword]
    );
  }

  update(user) {
    return this.database.query(
      `update ${this.table} set email = ? where id = ?`,
      [user.email, user.id]
    );
  }
}

module.exports = UsersManager;

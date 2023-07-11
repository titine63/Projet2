const models = require("../models");

const search = (req, res) => {
  const searchTerm = req.query.term;
  console.info("searchTerm :>> ", searchTerm);
  models.search
    .search(searchTerm)
    .then(([rows]) => {
      res.send(rows);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

module.exports = {
  search,
};

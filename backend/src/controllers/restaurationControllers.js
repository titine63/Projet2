const models = require("../models");

const search = (req, res) => {
  const searchTerm = req.query.term;
  console.info("searchTerm :>> ", searchTerm);
  models.restaurants
    .search(searchTerm)
    .then(([rows]) => {
      res.send(rows);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const browse = (req, res) => {
  models.restaurants
    .findAll()
    .then(([rows]) => {
      res.send(rows);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const find = (req, res) => {
  models.restaurants
    .find(req.params.id)
    .then(([rows]) => {
      res.send(rows);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const create = (req, res) => {
  models.restaurants
    .insert(req.body)
    .then(([rows]) => {
      res.send(rows);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

module.exports = {
  create,
  search,
  browse,
  find,
};

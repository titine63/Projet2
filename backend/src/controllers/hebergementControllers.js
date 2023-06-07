const hebergements = require("../../../frontend/src/data/hebergements.json");

const browse = (req, res) => {
  try {
    res.status(200).send(hebergements);
  } catch (error) {
    res.status(500).send(error);
  }
};

module.exports = {
  browse,
};

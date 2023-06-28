const models = require("../models");

const browse = (req, res) => {
  models.accommodation
    .findAll()
    .then(([rows]) => {
      res.send(rows);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

// const read = async (req, res) => {
//   const { id } = req.params;
//   try {
//     const accommodation = await accommodationManager.getById(id);
//     if (accommodation) {
//       res.json(accommodation);
//     } else {
//       res.status(404).json({ error: "Accommodation not found" });
//     }
//   } catch (error) {
//     res.status(500).json({ error: "Failed to fetch accommodation" });
//   }
// };

// const add = async (req, res) => {
//   const accommodation = req.body;
//   try {
//     const result = await accommodationManager.insert(accommodation);
//     accommodation.id = result.insertId;
//     res.status(201).json(accommodation);
//   } catch (error) {
//     res.status(500).json({ error: "Failed to add accommodation" });
//   }
// };

// const edit = async (req, res) => {
//   const { id } = req.params;
//   const accommodation = req.body;
//   accommodation.id = id;
//   try {
//     const result = await accommodationManager.update(accommodation);
//     if (result.affectedRows === 0) {
//       res.status(404).json({ error: "Accommodation not found" });
//     } else {
//       res.status(200).json(accommodation);
//     }
//   } catch (error) {
//     res.status(500).json({ error: "Failed to update accommodation" });
//   }
// };

// const destroy = async (req, res) => {
//   const { id } = req.params;
//   try {
//     const result = await accommodationManager.delete(id);
//     if (result.affectedRows === 0) {
//       res.status(404).json({ error: "Accommodation not found" });
//     } else {
//       res.sendStatus(204);
//     }
//   } catch (error) {
//     res.status(500).json({ error: "Failed to delete accommodation" });
//   }
// };

module.exports = {
  browse,
};

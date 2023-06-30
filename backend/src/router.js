const express = require("express");

const router = express.Router();

const itemControllers = require("./controllers/itemControllers");
const restaurantsController = require("./controllers/restaurationControllers");
const hebergementControllers = require("./controllers/hebergementControllers");

router.get("/hebergements", hebergementControllers.browse);
router.get("/items/:id", itemControllers.read);
router.put("/items/:id", itemControllers.edit);
router.post("/items", itemControllers.add);
router.delete("/items/:id", itemControllers.destroy);
router.post("/restaurant", restaurantsController.create);
router.get("/restaurants", restaurantsController.browse);
router.get("/restaurants/:id", restaurantsController.find);

module.exports = router;

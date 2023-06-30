const express = require("express");

const router = express.Router();

const itemControllers = require("./controllers/itemControllers");
const restaurantsController = require("./controllers/restaurationControllers");
const hebergementControllers = require("./controllers/hebergementControllers");
const eventsControllers = require("./controllers/eventsControllers");

router.get("/hebergements", hebergementControllers.browse);
router.get("/items/:id", itemControllers.read);
router.put("/items/:id", itemControllers.edit);
router.post("/items", itemControllers.add);
router.delete("/items/:id", itemControllers.destroy);
router.post("/restaurant", restaurantsController.create);
router.get("/restaurants", restaurantsController.browse);
router.get("/restaurants/:id", restaurantsController.find);
router.post("/events", eventsControllers.create);
router.get("/events", eventsControllers.browse);
router.get("/events/:id", eventsControllers.find);
router.delete("/events/:id", eventsControllers.destroy);

module.exports = router;

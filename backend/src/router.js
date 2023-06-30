const express = require("express");

const router = express.Router();

const itemControllers = require("./controllers/itemControllers");
const restaurantsController = require("./controllers/restaurationControllers");
const hebergementControllers = require("./controllers/hebergementControllers");
const eventsControllers = require("./controllers/eventsControllers");
const sitesControllers = require("./controllers/sitesControllers");
const usersControllers = require("./controllers/usersControllers");

router.get("/hebergements", hebergementControllers.browse);

router.get("/sites", sitesControllers.browse);
router.get("/sites/category/:category_id", sitesControllers.browseByCategory);
router.get("/sites/:id", sitesControllers.read);
router.put("/sites/:id", sitesControllers.edit);
router.post("/sites", sitesControllers.add);
router.delete("/sites/:id", sitesControllers.destroy);

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

router.get("/users", usersControllers.getAllUsers);
router.get("/users/:id", usersControllers.getUserById);
router.put("/users/:id", usersControllers.editUser);
router.post("/users", usersControllers.addUser);
router.delete("/users/:id", usersControllers.deleteUser);

module.exports = router;

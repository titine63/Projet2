const express = require("express");

const router = express.Router();

const itemControllers = require("./controllers/itemControllers");
const hebergementControllers = require("./controllers/hebergementControllers");
const sitesControllers = require("./controllers/sitesControllers");

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

module.exports = router;

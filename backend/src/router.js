const express = require("express");

const router = express.Router();

const itemControllers = require("./controllers/itemControllers");
const hebergementControllers = require("./controllers/hebergementControllers");

router.get("/hebergements", hebergementControllers.browse);
router.get("/items/:id", itemControllers.read);
router.put("/items/:id", itemControllers.edit);
router.post("/items", itemControllers.add);
router.delete("/items/:id", itemControllers.destroy);

module.exports = router;

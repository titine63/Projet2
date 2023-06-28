const express = require("express");

const router = express.Router();

const itemControllers = require("./controllers/itemControllers");
const accommodationControllers = require("./controllers/accommodationControllers");

router.get("/accommodations", accommodationControllers.browse);
// router.get("/accommodation/:id", accommodationControllers.read);
// router.put("/accommodation/:id", accommodationControllers.edit);
// router.post("/accommodation", accommodationControllers.add);
// router.delete("/accommodation/:id", accommodationControllers.destroy);

router.get("/items/:id", itemControllers.read);
router.put("/items/:id", itemControllers.edit);
router.post("/items", itemControllers.add);
router.delete("/items/:id", itemControllers.destroy);

module.exports = router;

// index.js
const express = require("express");
const router = express.Router();

// Import route 
const roleRoutes = require("./role");

router.use("/role", roleRoutes);

module.exports = router;
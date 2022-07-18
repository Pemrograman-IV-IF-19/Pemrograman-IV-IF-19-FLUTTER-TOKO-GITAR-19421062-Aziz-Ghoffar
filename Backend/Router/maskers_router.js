/*
Judul : Aplikasi Penjualan Masker


1. Muhammad Tohir 19411043
2. Seliya Pirnanda 194211047
*/

"use strict";
const router = require("express").Router();
const Controller = require("../Controller/maksers_controller");

//Create atau menambahkan sebuah data
router.post("/add", (req, res) => {
  Controller.add(req.body)
    .then((result) => res.json(result))
    .catch((err) => res.json(err));
});

//Mengambil data-data
router.get("/get", (req, res) => {
  Controller.get(req.body)
    .then((result) => res.json(result))
    .catch((err) => res.json(err));
});

//menghapus data
router.delete("/delete/:id", Controller.delete);

//Update Data skin care menggunakan id
router.put("/update/:id", Controller.update);

module.exports = router;

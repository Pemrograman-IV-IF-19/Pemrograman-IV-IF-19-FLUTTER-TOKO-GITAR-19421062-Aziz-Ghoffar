/*
Judul : Aplikasi Penjualan Masker
1. Muhammad Tohir 19411043
2. Seliya Pirnanda 194211047
*/
const Model = require("../Model/model_maskers");
const response = require("../Config/response");


//membuat fungsi data untuk get all skincare
exports.get = (data) =>
  new Promise((resolve, reject) => {
    Model.find().then((data) => {
      if (data.length == 0) {
        reject(response.errorResult());
      } else {
        resolve(
          Object.assign(response.suksesResult("Success"), {
            data: data,
          })
        );
      }
    });
  });

//cara menambahkan atau create data dari model ke bawah ini
exports.add = (data) =>
  new Promise((resolve, reject) => {
    Model.create(data)
      .then(() =>
        resolve(response.suksesResponse("Berhasil Input Data Masker"))
      )
      .catch(() =>
        reject(response.errorResponse("Gagal Menambah Data Masker"))
      );
  });

// Delete data
exports.delete = async (req, res) => {
  try {
    await Model.findOneAndDelete({ _id: req.params.id });
    res.json(response.suksesResponse("Berhasil Menghapus Data"));
  } catch (error) {
    res.json(response.errorResponse("Gagal Menghapus Data"));
  }
};

// Update data Menggunakan id
exports.update = async (req, res) => {
  try {
    await Model.findOneAndUpdate(
      { _id: req.params.id },
      {
        namaProduk: req.body.namaProduk,
        stok: req.body.stok,
        jenis: req.body.jenis,
        harga: req.body.harga,
        deskripsi: req.body.deskripsi
      }
    );
    res.json(response.suksesResponse("Berhasil Update Data"));
  } catch (error) {
    res.json(response.errorResponse("Gagal Update Data"));
  }
};
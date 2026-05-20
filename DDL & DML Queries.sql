-- Query untuk pembuatan database dengan nama milestone1
CREATE DATABASE milestone1;

-- Query untuk pembuatan table kosong dengan nama staging
CREATE TABLE staging(
id VARCHAR(50),
produk TEXT,
harga INT,
rating INT,
foto TEXT
);

-- Query untuk mengisi value table staging berdasarkan file csv
COPY staging (id,produk,harga,rating,foto)
FROM 'C:\Users\temp\CODA_P0M1_Kenny-Palibutan_BERSIH.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM staging;

-- Query untuk membuat table atasnama info_produk kosong yang di normalisasi
CREATE TABLE info_produk(
id SERIAL PRIMARY KEY,
foto_produk TEXT,
harga INT,
rating INT
);

-- Query untuk membuat table atasnama produk kosong yang di normalisasi dan untuk menghubungkan kolom dalam table produk dengan table info_id
CREATE TABLE produk(
id SERIAL PRIMARY KEY,
nama_produk TEXT,
foto_id INT REFERENCES info_produk(id)
);

-- Query untuk memasukan value setiap kolom yang ada di table info_produk berdasarkan value pada table staging
INSERT INTO info_produk (foto_produk, harga, rating)
SELECT DISTINCT foto, harga, rating FROM staging;

-- Query untuk memasukan value setiap kolom yang ada di table produk berdasarkan value pada table staging dan menghubungkan ke table info_produk untuk mengambil value dari foto_id
INSERT INTO produk (nama_produk, foto_id)
SELECT s.produk, ip.id FROM staging s JOIN info_produk ip
ON s.foto = ip.foto_produk;

-- Query untuk melihat setiap table yang ada
SELECT * FROM staging;
SELECT * FROM produk;
SELECT * FROM info_produk;

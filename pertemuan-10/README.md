di pertemuan 10 saya melakukan:
1. menyalin artefak pertemuan 9 untuk baseline pertemuan 10, dan menguji tampilan pertemuan 10. hasilnya sama seperti pertemuan 9.
2. memeriksa kesiapan phpMyAdmin dan repositori pertemuan - 10
3. mengidentifikasi data formulir kontak di index.php berdasarkan atribut name. ada 8 data yang dikirim formulir
4. menentukan data yang akan disimpan ke basis data, yaitu hanya 8 data formulir kontak di atas. informasi profil mahasiswa (NIM, nama mahasiswa, program studi di bagian profil) tidak ikut disimpan karena bukan data formulir kontak.
5. menentukan representasi data minat. kedua checkbox memakai name="minat[]" dengan nilai HTML dan CSS, jadi PHP menerimanya sebagai larik, misalnya ["HTML", "CSS"]. karena hanya memakai satu tabel, pilihan minat disimpan dalam satu kolom sebagai teks yang dipisahkan koma: HTML, CSS, atau HTML, CSS.
6. menentukan nama basis data dan tabel sesuai NIM 2611500008:
   - nama basis data: db_pwd_2611500008
   - nama tabel: tbl_kontak_2611500008
7. merancang atribut dan tipe data tabel kontak dari 8 data formulir: nama VARCHAR(50), email VARCHAR(255), semester TINYINT, tanggal DATE, jenis_pesan VARCHAR(20), minat VARCHAR(50), prodi VARCHAR(2), pesan VARCHAR(300). ukuran nama dan pesan disesuaikan dengan maxlength di formulir (50 dan 300).
8. menentukan primary key: menambahkan atribut id dengan tipe INT, PRIMARY KEY, dan AUTO_INCREMENT sebagai identitas unik setiap data kontak.
9. memeriksa rancangan akhir struktur tabel kontak. tabel memiliki 9 atribut.
   hanya atribut id yang menjadi PRIMARY KEY dengan AUTO_INCREMENT.
10. membuat basis data db_pwd_2611500008 dan tabel tbl_kontak_2611500008 di phpMyAdmin. saat pertama mengisi struktur tabel, saya salah mengisi nama kolom dengan judul tabel di modul (No, Atribut, TipeData, Keterangan). kesalahan ini saya perbaiki sehingga tabel berisi 8 kolom yang benar. kolom id belum ada di awal, jadi saya tambahkan lewat tab SQL:

    ```sql
    ALTER TABLE tbl_kontak_2611500008
    ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;
    ```


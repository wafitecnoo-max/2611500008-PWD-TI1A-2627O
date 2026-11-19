di pertemuan 10 saya melakukan:
1. menyalin artefak pertemuan 9 untuk baseline pertemuan 10, dan menguji tampilan pertemuan 10. hasilnya sama seperti pertemuan 9.
2. memeriksa kesiapan phpMyAdmin dan repositori pertemuan - 10
3. mengidentifikasi data formulir kontak di index.php berdasarkan atribut name. ada 8 data yang dikirim formulir
4. menentukan data yang akan disimpan ke basis data, yaitu hanya 8 data formulir kontak di atas. informasi profil mahasiswa (NIM, nama mahasiswa, program studi di bagian profil) tidak ikut disimpan karena bukan data formulir kontak.
5. menentukan representasi data minat. kedua checkbox memakai name="minat[]" dengan nilai HTML dan CSS, jadi PHP menerimanya sebagai larik, misalnya ["HTML", "CSS"]. karena hanya memakai satu tabel, pilihan minat disimpan dalam satu kolom sebagai teks yang dipisahkan koma: HTML, CSS, atau HTML, CSS.
6. menentukan nama basis data dan tabel sesuai NIM 2611500008:
   - nama basis data: db_pwd_2611500008
   - nama tabel: tbl_kontak_2611500008

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

11. mempelajari perintah DDL. CREATE DATABASE membuat basis data, USE memilih basis data yang aktif, dan CREATE TABLE membuat tabel beserta atributnya. bentuk SQL dari tabel yang saya buat:

    ```sql
    CREATE DATABASE db_pwd_2611500008;
    USE db_pwd_2611500008;
    CREATE TABLE tbl_kontak_2611500008 (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nama VARCHAR(50),
        email VARCHAR(255),
        semester TINYINT,
        tanggal DATE,
        jenis_pesan VARCHAR(20),
        minat VARCHAR(50),
        prodi VARCHAR(2),
        pesan VARCHAR(300)
    );
    ```

12. memeriksa struktur tabel di tab Structure dan memperbaiki ketidaksesuaian. saya tidak sengaja menambahkan index UNIQUE pada kolom id, dan ternyata ada dua index tambahan (id dan id_2). keduanya saya hapus dengan perintah:

    ```sql
    ALTER TABLE tbl_kontak_2611500008
    DROP INDEX id,
    DROP INDEX id_2;
    ```

    setelah diperbaiki, struktur tabel berisi 9 atribut sesuai rancangan dan index yang tersisa hanya PRIMARY pada kolom id.
13. memasukkan data awal ke tabel kontak. data pertama: Budi Santoso, budi@mail.com, semester 1, tanggal 2026-11-16, prodi TI, pesan "Halo, ini percobaan". kolom id dibiarkan kosong dan terisi otomatis menjadi 1.
14. mempelajari perintah SQL INSERT (DML). saat pertama mencoba, saya menjalankan template INSERT dari phpMyAdmin tanpa mengganti placeholder [value-1] dan seterusnya, sehingga muncul error #1366 Incorrect integer value: '[value-3]' for column 'semester'. setelah placeholder diganti dengan data asli, perintah berikut berhasil dijalankan:

    ```sql
    INSERT INTO tbl_kontak_2611500008
    (nama, email, semester, tanggal, jenis_pesan, minat, prodi, pesan)
    VALUES
    ('Andi', 'andi@example.com', 2, '2026-11-15', 'pertanyaan', 'HTML, CSS', 'TI', 'Saya ingin belajar pemrograman web.');
    ```

    kolom id tidak ditulis karena terisi otomatis oleh AUTO_INCREMENT. data Andi mendapat id 2.
15. memeriksa data awal di tab Browse. kedua data tampil dengan id 1 dan 2 yang terbentuk otomatis, dan kolom minat tampil sebagai teks.
16. memeriksa dan memperbaiki data awal. data id 1 belum sesuai ketentuan formulir: jenis_pesan berisi "Pertanyaan" (seharusnya pertanyaan, huruf kecil) dan minat berisi "Web" (seharusnya HTML, CSS, atau HTML, CSS). data tersebut saya perbaiki dengan:

    ```sql
    UPDATE tbl_kontak_2611500008
    SET jenis_pesan = 'pertanyaan', minat = 'HTML, CSS'
    WHERE id = 1;
    ```

    setelah diperbaiki, kedua data sudah sesuai ketentuan atribut formulir P9.
17. menentukan pengaturan ekspor basis data db_pwd_2611500008: Export method Quick dan Format SQL.
18. mengekspor basis data ke berkas db_pwd_2611500008.sql dan memindahkannya ke direktori pertemuan-10. hasil ekspor pertama masih memuat dua index UNIQUE karena diekspor sebelum index tersebut dihapus, jadi saya ekspor ulang. nama berkas hasil unduhan kedua sempat menjadi "db_pwd_2611500008 (1).sql", lalu diganti menjadi db_pwd_2611500008.sql.

dipertemuan 7 saya mengembangkan, menguji dan menghasilkan
1. menyiapkan base line p7 
2. event.preventDefault(); tenyata menghalangi eksekusi submit
3. mencoba superglobal $_GET untuk nama, email, dan semester
4. mencoba superglobal $_POST untuk nama, email, dan semester
5. menyimpan demonstrasi GET sebagai indexGet.php (action="indexGet.php", method="get") dan membaca parameter nama memakai isset() dan htmlspecialchars()
6. mengaktifkan kembali event.preventDefault() dan menambahkan contactForm.submit() setelah validasi JavaScript berhasil pada script.js

hasil pengujian indexGet.php melalui server bawaan PHP 8.3 (Apache Laragon sedang tidak berjalan):
- ?nama=Andi menampilkan "Nama yang diterima: Andi"
- ?nama=Budi%20Anduk menampilkan "Nama yang diterima: Budi Anduk"
- tanpa parameter nama tidak menampilkan nilai nama dan tidak menghasilkan peringatan
- ?nama=Andi&email=andi%40example.com hanya menampilkan nama
- <b>X</b> pada parameter nama dikeluarkan sebagai &lt;b&gt;X&lt;/b&gt;

belum diuji: pengiriman formulir melalui tombol Kirim di peramban

E.2 mengubah formulir utama menjadi POST:
- index.php sudah memakai method="post" sejak tahap sebelumnya, jadi tidak ada perubahan kode pada tahap ini
- pengujian melalui localhost: sumber halaman memuat action="index.php" method="post", navigasi dan tombol Kirim tersedia
- indexGet.php tetap memakai method="get"

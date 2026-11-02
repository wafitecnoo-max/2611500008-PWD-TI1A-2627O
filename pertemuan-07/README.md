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

pengiriman formulir melalui tombol Kirim diuji pada tahap E.4 dengan Edge headless melalui localhost

E.2 mengubah formulir utama menjadi POST:
- index.php sudah memakai method="post" sejak tahap sebelumnya, jadi tidak ada perubahan kode pada tahap ini
- pengujian melalui localhost: sumber halaman memuat action="index.php" method="post", navigasi dan tombol Kirim tersedia
- indexGet.php tetap memakai method="get"

E.3 menerima data formulir menggunakan POST:
- kode percobaan session lama diganti dengan pembacaan $_POST['nama'] memakai isset() dan htmlspecialchars(); session_start() akan dipasang kembali pada G.1
- atribut value pada input nama, email, dan semester dihapus karena masih memakai variabel percobaan lama
- pengujian permintaan POST ke localhost: nama=Wafi Test menampilkan "Nama yang diterima: Wafi Test", URL tetap index.php tanpa parameter
- <b>X</b> pada nama dikeluarkan sebagai &lt;b&gt;X&lt;/b&gt;
- membuka halaman melalui GET tidak lagi menghasilkan peringatan PHP

E.4 menyesuaikan pembacaan input dan validasi formulir:
- index.php membaca email, semester, tanggal, jenis_pesan, prodi, pesan, dan minat melalui $_POST; checkbox diubah menjadi name="minat[]"
- selector topikDipilih pada script.js mencakup minat dan minat[]
- pengujian dengan mengisi dan mengklik Kirim memakai Edge headless melalui localhost:
  - index.php dengan HTML dan CSS, hanya HTML, atau hanya CSS: formulir terkirim, URL tanpa parameter
  - index.php tanpa topik: muncul "Pilih minimal satu topik yang diminati.", formulir tidak terkirim
  - indexGet.php dengan satu topik: formulir terkirim, parameter tampil di URL (nama, email, semester, tanggal, jenis_pesan, minat, prodi, pesan) dan nama ditampilkan
  - indexGet.php tanpa topik: muncul pesan yang sama, formulir tidak terkirim
  - indexGet.php dengan nama kosong: muncul "Nama lengkap harus diisi 3 sampai 50 karakter.", formulir tidak terkirim

F.2-F.5 dan F.6 tahap 1 menampilkan pesan kesalahan validasi PHP:
- menambahkan normalisasi trim() sebelum validasi, pemeriksaan kelengkapan, format semester dan email, serta nilai pilihan jenis pesan, program studi, dan minat
- menghapus echo nama sebelum <!doctype html> dan menampilkan $pesanKesalahan setelah judul Kontak memakai htmlspecialchars()
- pengujian memakai permintaan POST langsung ke localhost dengan curl sehingga tidak melewati script.js; script.js tidak perlu dinonaktifkan
  - formulir kosong: muncul sepuluh pesan sesuai modul, dari "Nama lengkap wajib diisi." sampai "Program studi tidak valid."
  - email bukan-email: "Format email tidak valid."
  - tanpa minat: "Minat wajib dipilih minimal satu."
  - semester 15 dan abc: "Semester harus berupa bilangan bulat antara 1 dan 14."
  - jenis pesan dan prodi di luar pilihan: "Jenis pesan tidak valid. Program studi tidak valid."
  - minat PHP: "Pilihan topik tidak valid."; minat bukan larik: "Format pilihan topik tidak valid."
  - nama berisi spasi saja: "Nama lengkap wajib diisi."
  - data valid dan halaman GET: tidak ada pesan kesalahan
- temuan: kiriman buatan nama[]=x menghasilkan peringatan "Array to string conversion" karena kode modul melakukan (string) pada larik; belum diperbaiki agar tetap sesuai modul

F.6 tahap 2 mengamankan keluaran data formulir:
- menampilkan bagian "Data yang Diterima Peladen" setelah </form> dengan htmlspecialchars(), foreach untuk minat, dan nl2br() untuk pesan
- pengujian dengan Edge headless melalui localhost: data valid menampilkan nama, email, semester, tanggal, jenis pesan, program studi, HTML dan CSS, serta pesan
- <b>Mahasiswa</b> pada pesan tampil sebagai teks biasa; sumber halaman berisi &lt;b&gt;Mahasiswa&lt;/b&gt;
- membuka halaman melalui GET tidak menampilkan bagian tersebut

G menerapkan session dan pola PRG:
- menambahkan session_start(), menyimpan hasil pemrosesan ke $_SESSION, mengalihkan dengan header('Location: index.php') dan exit, lalu mengambil data session setelah pengalihan
- $_SESSION['pesanKesalahan'] dihapus dengan unset() setelah ditampilkan; kondisi "Data yang Diterima Peladen" diubah menjadi !empty($nama)
- pengujian dengan Edge headless melalui localhost: data valid dikirim, peramban kembali ke index.php dan data tampil; setelah muat ulang tanpa cache data tetap tampil
- pengujian dengan curl: POST mendapat respons 302 ke index.php; pesan "Format email tidak valid." muncul pada GET pertama dan hilang pada GET kedua, sedangkan data tetap tampil; sesi baru tidak menampilkan data maupun peringatan
- catatan: karena kode modul menyimpan data sebelum memeriksa hasil validasi, data yang gagal validasi juga tampil pada "Data yang Diterima Peladen", dan isian tidak dikembalikan ke kolom formulir

H pengujian hasil akhir:
- cara menjalankan: aktifkan Laragon dengan Start All, lalu buka untuk formulir POST dan indexGet.php untuk demonstrasi GET
- index.php, indexGet.php, style.css, script.js, dan img/foto-profil.jpg merespons HTTP 200 melalui localhost, dan pertemuan-06 tidak diubah
- Edge headless: email salah ditolak script.js, data valid tampil setelah PRG pada index.php, dan parameter tampil di URL pada indexGet.php; tidak ada keluaran galat PHP
- pengujian dijalankan otomatis, belum diperiksa secara visual di peramban biasa

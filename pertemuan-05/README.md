P5 - JavaScript Dasar, DOM, Event, dan Validasi Sisi Klien
Deskripsi
Dokumentasi pengembangan halaman web pada P5, meliputi JavaScript, DOM, event listener, interaksi
navigasi, dan validasi formulir sisi klien.
Fitur dan Pengembangan

- **Baseline P5 dari P4**: menyalin artefak P4 (`index.html`, `style.css`, `img/`) sebagai titik awal
  halaman Profil Mahasiswa yang semantik dan responsif.
- **Integrasi JavaScript eksternal**: menautkan `script.js` ke `index.html` melalui tag
  `<script src="script.js">` di akhir `<body>` agar skrip berjalan setelah elemen DOM dimuat.
- **Tombol navigasi responsif (DOM & Event)**: tombol hamburger (`#navToggle`) menggunakan
  `addEventListener("click", ...)` untuk membuka/menutup menu dengan `classList.toggle("nav-open")`,
  sekaligus memperbarui atribut aksesibilitas `aria-expanded` dan `aria-label`.
- **Validasi formulir sisi klien**: event `submit` dicegat dengan `event.preventDefault()`, lalu
  tiap field divalidasi berurutan dan pesan hasil ditampilkan pada `#formFeedback`:
  - Nama: wajib diisi, 3–50 karakter.
  - Email: wajib cocok dengan pola `^[^\s@]+@[^\s@]+\.[^\s@]+$`.
  - Semester: wajib angka 1–14.
  - Tanggal kunjungan: wajib diisi.
  - Jenis pesan (radio): wajib dipilih salah satu.
  - Topik yang diminati (checkbox): wajib minimal satu.
  - Program studi (select): wajib dipilih.
  - Pesan (textarea): wajib diisi, maksimal 300 karakter.
- **Umpan balik dinamis**: kelas `.form-feedback-error` / `.form-feedback-success` mengubah warna
  pesan; event `input` dan `reset` mengosongkan kembali pesan feedback.

## Pengujian

- **Navigasi responsif**: pada layar < 768px, klik tombol hamburger membuka/menutup menu dan
  `aria-expanded` berubah `true`/`false`. Pada layar ≥ 768px menu tampil horizontal dan tombol
  disembunyikan (via media query di `style.css`). Hasil: sesuai harapan.
- **Validasi gagal**: mengirim form dengan field kosong/tidak valid menampilkan pesan error yang
  sesuai berwarna merah dan proses berhenti di field pertama yang tidak valid. Hasil: sesuai harapan.
- **Validasi sukses**: mengisi seluruh field dengan nilai valid menampilkan "Form berhasil
  divalidasi." berwarna hijau. Hasil: menunggu verifikasi (lihat catatan di bawah).
- **Catatan**: `script.js` memakai `getElementById("contactForm")`, sedangkan `<form>` pada
  `index.html` belum memiliki `id="contactForm"`. Perlu penambahan id tersebut agar listener
  validasi/reset/input terpasang dengan benar.

## Riwayat Pengembangan

- **Siapkan baseline P5 dari artefak P4** (`54f5308`): menyiapkan struktur awal P5 dari hasil P4.
- **Hubungkan JavaScript eksternal ke HTML** (`645a4ef`): menautkan `script.js` ke `index.html`.
- **Tambah tombol navigasi responsif** (`e7f131e`): menambahkan tombol hamburger dan logika
  toggle menu berbasis event listener.

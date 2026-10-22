# P6 - PHP Dasar dan Pemrograman Sisi Peladen

## Deskripsi

Dokumentasi pengembangan halaman web pada P6 sebagai lanjutan dari P5. Halaman Profil Mahasiswa
yang sebelumnya statis (`index.html`) diubah menjadi `index.php` agar sebagian kontennya dihasilkan
oleh PHP di sisi peladen. Materi yang diterapkan meliputi tag dan keluaran PHP, komentar, variabel,
konstanta, operator, percabangan, perulangan, serta fungsi bawaan PHP.

## Fitur dan Pengembangan

- **Baseline P6 dari P5**: menyalin artefak P5 (`style.css`, `script.js`, `img/`) dan mengganti
  `index.html` menjadi `index.php`. Navigasi responsif dan validasi formulir sisi klien dari P5
  tetap dipertahankan tanpa perubahan.
- **Tag dasar, komentar, dan keluaran PHP**: menguji eksekusi PHP dengan `echo`, menggunakan
  komentar satu baris (`//`) dan beberapa baris (`/* ... */`), serta membandingkan konten HTML
  statis dengan HTML yang dihasilkan melalui `echo` di dalam tag PHP.
- **Variabel dan konstanta**: mendeklarasikan data mahasiswa dengan berbagai tipe data, yaitu
  string (`$nim`, `$namaMahasiswa`, `$programStudi`, `$tahunAkademik`), integer (`$semester`),
  float (`$ipk`), boolean (`$statusAktif`), dan null (`$catatanTambahan`). Konstanta
  `NAMA_MATA_KULIAH` dan `PROFIL_GITHUB` dibuat dengan `const`. Data tersebut ditampilkan pada
  bagian Beranda, Tentang, dan tautan GitHub menggunakan `echo` dan `print`.
- **Operator**:
  - Aritmetika: `$sisaSemester = $batasSemester - $semester`.
  - Perbandingan dan logika: `$semester >= 1 && $semester <= $batasSemester` untuk memeriksa
    rentang semester.
  - Ternary: menentukan `$statusSemester`, status aktif mahasiswa, dan nama program studi
    (ternary bersarang untuk kode `SI`/`TI`).
  - Penggabungan string (`.`) dan penugasan/increment (`++`).
- **Percabangan**:
  - `if-elseif-else`: menentukan keterangan semester (awal, menengah, atau akhir).
  - `switch-case-default`: menentukan fokus program studi berdasarkan kode program studi, dan
    memetakan teks target belajar di dalam perulangan.
- **Perulangan**:
  - `for`: menampilkan daftar 5 target belajar (tanpa array, karena larik dibahas pada P9).
  - `while`: menampilkan daftar nomor semester 1 sampai 3.
- **Fungsi bawaan dan format tampilan**:
  - `number_format($ipk, 2, ',', '.')` untuk menampilkan IPK dengan format Indonesia (`3,75`).
  - Pemeriksaan `$catatanTambahan === null` untuk menampilkan "Belum ada" bila catatan kosong.
  - `date("Y")` dengan tag singkat `<?= ?>` untuk menampilkan tahun berjalan secara dinamis pada
    footer, beserta nama dan NIM.
- **Penyesuaian formulir**: atribut `action` formulir diarahkan ke `index.php` dengan
  `method="get"`.

## Cara Menjalankan

1. Jalankan Laragon (Apache) agar PHP dapat dieksekusi.
2. Buka `http://localhost/PWD/2627o/ti1a/2611500008-PWD-TI1A-2627O/pertemuan-06/index.php` di
   peramban.
3. Halaman tidak dapat dibuka langsung sebagai file (`file://`), karena kode PHP harus diproses
   oleh peladen terlebih dahulu.

## Pengujian

- **Eksekusi PHP**: teks "PHP berhasil dijalankan." dan "Keluaran menggunakan echo." tampil di
  halaman, sedangkan isi komentar tidak tampil. Hasil: sesuai harapan.
- **Variabel dan konstanta**: nama, mata kuliah, tahun akademik, program studi, dan tautan GitHub
  tampil sesuai nilai variabel/konstanta. Hasil: sesuai harapan.
- **Operator dan percabangan**: dengan `$semester = 2` dan `$programStudi = "TI"`, halaman
  menampilkan "Semester: 2 (Semester awal)", "Sisa semester hingga batas: 6", "Pemeriksaan rentang
  semester: Sesuai rentang", "Teknik Informatika (TI)", dan fokus "Komputasi dan pengembangan
  perangkat lunak". Hasil: sesuai harapan.
- **Perulangan**: daftar target belajar ke-1 sampai ke-5 tampil (target ke-5 berisi "Belum
  dipetakan" dari `default`), dan daftar Semester 1 sampai 3 tampil. Hasil: sesuai harapan.
- **Format tampilan**: IPK tampil sebagai `3,75`, catatan tambahan tampil "Belum ada", dan footer
  menampilkan tahun berjalan. Hasil: sesuai harapan.
- **Fitur P5**: navigasi responsif dan validasi formulir sisi klien tetap berjalan karena
  `script.js` tidak berubah dan formulir sudah memiliki `id="contactForm"`. Hasil: sesuai harapan.
- **Catatan**:
  - `script.js` memanggil `event.preventDefault()` saat submit, sehingga data formulir belum benar-benar
    dikirim ke `index.php`. Pemrosesan data formulir di sisi peladen dapat dikembangkan pada
    pertemuan berikutnya.
  - Pada bagian Target Belajar terdapat elemen `<h3>` di dalam `<ol>` dan `<ol>` bersarang, yang
    belum sesuai struktur HTML yang valid. Paragraf sapaan di bagian Beranda juga masih ditulis dua
    kali (versi PHP dan versi statis). Keduanya dapat dirapikan pada pengembangan berikutnya.

## Riwayat Pengembangan

- **Pengujian komentar, echo, dan tag dasar PHP** (`57a656e`).
- **Mempelajari komentar dan keluaran dengan echo dan print** (`787a6e2`).
- **Membandingkan keluaran tag HTML dan HTML di dalam tag PHP** (`e00d5fd`).
- **Menambahkan deklarasi variabel PHP** (`2d3cbb2`).
- **Menambahkan konstanta PHP** (`f845777`).
- **Menampilkan data mahasiswa dengan variabel dan konstanta** (`45240b9`).
- **Menambahkan operator aritmetika PHP** (`8cabf9b`).
- **Menerapkan pemeriksaan rentang semester** (`708b5dc`).
- **Menerapkan percabangan if-elseif-else** (`c8ffe93`).
- **Menerapkan operator ternary pada profil mahasiswa** (`b13c4fe`).
- **Menerapkan percabangan switch-case** (`574f2ff`).
- **Menerapkan perulangan for untuk target belajar** (`be3cd03`).
- **Menerapkan perulangan while untuk nomor semester** (`161fcb9`).
- **Memformat tampilan IPK dengan number_format** (`ce67e71`).
- **Menampilkan catatan tambahan berdasarkan nilai null** (`b551764`).
- **Menampilkan tahun dinamis pada footer** (`3c06589`).
- **Menyesuaikan action formulir ke index.php** (`6a37e4f`).

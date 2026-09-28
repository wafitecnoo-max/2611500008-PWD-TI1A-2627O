# Pertemuan 3 - Formulir HTML dan CSS Dasar

## Baseline
- Menggunakan hasil P2 sebagai dasar pengembangan P3.
- Menyalin `index.html` dan `img/foto-profil.jpg` ke `pertemuan-03/`.

## Implementasi Formulir
- Elemen form yang digunakan: `<form>`, `<label>`, `<input>`, `<select>`, `<option>`, `<textarea>`, dan `<button>`.
- Tipe input yang digunakan: `text`, `email`, `number`, `date`, `radio`, dan `checkbox`.
- Atribut validasi yang digunakan: `required`, `minlength="3"`, `maxlength="50"`, `min="1"`, `max="14"`, `type="email"`, dan `maxlength="300"`.

## Pengujian GET dan POST
- Hasil pengujian GET: Seluruh data formulir dikirimkan sebagai query string pada URL setelah tanda tanya (`?`) dalam format pasangan nama dan nilai parameter (`name=value`) yang dipisahkan oleh tanda ampersand (`&`). Halaman target `index.html` menerima dan memuat ulang URL beserta query string tersebut.
- Contoh URL encoding yang ditemukan: Spasi dikonversi menjadi tanda `+`, simbol `@` pada email dikonversi menjadi `%40`, dan tanda koma diubah menjadi `%2C`. Contoh query string lengkap:
  `?nama=Muhammad+Indzar+Wafi&email=minda%40example.com&semester=2&tanggal=2026-09-28&jenis_pesan=pertanyaan&minat=HTML&prodi=TI&pesan=Halo%2C+ini+pesan+uji+coba`
- Hasil pengujian POST: Data dikirimkan melalui request body sehingga tidak tampak pada URL peramban. Saat diuji pada web server statis / GitHub Pages tanpa program pemroses backend, server merespons dengan galat `405 Method Not Allowed` karena GitHub Pages hanya melayani berkas statis dan tidak menangani request bertipe POST.

## CSS Dasar
- Selector elemen: Selector elemen dan kombinasi turunan (descendant) seperti `label`, `h2`, `h3`, `p`, `ol`, serta `button` (`#about h2`, `#about h3`, `#about p`, `#about ol`, `#contact h2`, `#contact label`, `#contact button`).
- Selector class: `.form-group` dan `.input-form`.
- Selector ID: `#about` dan `#contact`.
- Properti CSS dasar yang digunakan: `background-color`, `border`, `border-bottom`, `padding`, `padding-bottom`, `margin`, `margin-bottom`, `font-family`, `font-size`, `font-weight`, dan `color`.

## Pengujian dan Perbaikan
- Galat yang ditemukan: Pada pengujian awal interaksi formulir, label harus dipastikan tepat menarget kontrol masukan terkait, dan seluruh kontrol masukan harus memiliki atribut `name` agar nilainya terkirim saat submit.
- Penyebab galat: Atribut `for` pada `<label>` harus identik dengan `id` kontrol masukan agar klik label dapat memfokuskan kursor; peramban tidak akan mengirim kontrol masukan ke dalam parameter GET jika atribut `name` belum ditentukan.
- Perbaikan yang dilakukan: Memastikan sinkronisasi seluruh pasangan atribut `for` dan `id`, melengkapi atribut `name` pada semua kontrol masukan, memastikan path gambar `img/foto-profil.jpg` valid, serta memastikan formulir kembali menggunakan `method="get"` setelah demonstrasi pengujian POST.
- Hasil pengujian ulang: Klik pada seluruh label berhasil mengarahkan fokus ke kontrol input pasangannya, validasi bawaan HTML (required, format email, batasan semester, dan panjang karakter) berfungsi dengan tepat menahan submit saat belum valid, query string GET terbentuk dengan rapi beserta URL encoding yang valid, dan tampilan visual formulir tersusun konsisten serta mudah dibaca.

## GitHub Pages
URL: https://wafitecnoo-max.github.io/2611500008-PWD-TI1A-2627O/pertemuan-03/

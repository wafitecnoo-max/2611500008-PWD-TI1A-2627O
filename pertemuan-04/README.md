# Pertemuan 4 - CSS3 Layout dan Responsive Web Design
## Pengembangan
- Perubahan yang dilakukan: Memisahkan gaya ke berkas `style.css`, menerapkan tata letak CSS3 dengan Flexbox pada navigasi (`nav ul`) dan CSS Grid pada `main`, serta membuat halaman responsif menggunakan `media query` pada breakpoint `min-width: 768px` (navigasi berubah dari vertikal ke horizontal dan `main` dari satu kolom menjadi dua kolom). Ditambahkan pula `box-sizing: border-box` dan `img { max-width: 100% }` agar elemen tidak meluap pada layar kecil.
- Commit dan push GitHub: Perubahan di-commit dengan pesan "memisahkan css, menambahkan file .css, membuat web responsif" lalu di-push ke branch `main` repositori GitHub.
## Pengujian
- Perangkat bergerak: Viewport 375px (seluler). Navigasi tampil menumpuk vertikal, `main` tampil satu kolom, dan gambar profil menyesuaikan lebar layar tanpa scroll horizontal.
- Desktop: Viewport 1366px. Navigasi tampil horizontal, `main` tampil dua kolom (Beranda dan Tentang bersebelahan), serta bagian Kontak merentang penuh (`grid-column: 1 / -1`).
- Galat dan perbaikan: Tidak ditemukan galat tata letak pada kedua ukuran viewport setelah pengujian melalui mode responsif peramban.
- Validasi CSS: Berkas `style.css` divalidasi melalui W3C CSS Validator dan tidak terdapat error.
## Repositori
URL GitHub: https://github.com/wafitecnoo-max/2611500008-PWD-TI1A-2627O
Isi README.md berdasarkan hasil pengembangan, pengujian, dan validasi yang benar benar dilakukan.

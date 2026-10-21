# Rak Buku

Rak buku 3D (Three.js) untuk menyimpan buku, artikel, dan materi kuliah, dikelompokkan per rak (mata kuliah/topik) dengan status baca. Materi PDF atau teks tempelan bisa dikurasi oleh Claude menjadi ringkasan, poin kunci, istilah penting, dan flashcard.

## Menambah buku

- **Cari** berdasarkan judul, penulis, atau ISBN. Hasil diambil dari Google Books, lalu Open Library bila Google tidak memberi hasil atau sedang dibatasi. Keduanya tanpa API key.
- **Scan barcode** memakai kamera (ZXing) bila browser mengizinkan. Kalau kamera tidak tersedia, app meminta foto barcode lalu membacanya.
- **Manual** untuk buku yang tidak ditemukan.
- Sampul asli dipakai di daftar, panel detail, dan di rak 3D (rak 3D butuh gambar yang mengizinkan CORS, misalnya sampul Open Library).

Di pratinjau claude.ai, permintaan ke situs luar diblokir. Di sana pencarian beralih ke saran dari Claude (ditandai "saran Claude, cek kembali") dan sampul tidak tampil.

## Menjalankan

```sh
sh build.sh                 # membungkus src/app.html menjadi index.html
python3 -m http.server 8000 # lalu buka http://localhost:8000
```

- Data tersimpan di `localStorage` browser. Saat pertama dibuka, rak diisi beberapa item contoh.
- Untuk kurasi AI di mode lokal, masukkan kunci API Claude di panel detail item. Kunci hanya disimpan di browser itu dan dikirim langsung ke `api.anthropic.com`. Cocok untuk pemakaian pribadi, jangan dipasang di situs publik.

## Struktur

- `src/app.html` — seluruh aplikasi (HTML, CSS, JS). Three.js r128 dan pdf.js 3.11 dimuat dari cdnjs.
- `build.sh` — menghasilkan `index.html` yang berdiri sendiri.

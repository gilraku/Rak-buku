# Rak Buku

Rak buku 3D (Three.js) untuk menyimpan buku, artikel, dan materi kuliah, dikelompokkan per rak (mata kuliah/topik) dengan status baca. Materi PDF atau teks tempelan bisa dikurasi oleh Claude menjadi ringkasan, poin kunci, istilah penting, dan flashcard.

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

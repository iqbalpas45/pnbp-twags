# Portal Rekapitulasi PNBP TWA GS (Personal Edition)

Aplikasi manajemen dan rekapitulasi transaksi tiket serta pembagian setoran PNBP Taman Wisata Alam Gunung Salak (TWA GS).

---

## Fitur Utama

- **Supabase Cloud Database**: Terhubung langsung ke project Supabase (`https://ydngshjcrjkerwztibjo.supabase.co`).
- **Offline Fallback / Hybrid Storage**: Jika tidak ada internet, data tetap bisa dibaca dari cache lokal dan transaksi baru disimpan sementara ke `localStorage`.
- **PIN Keamanan Akses Pribadi**: Akses diamankan dengan PIN (Default: `1234`). Dapat diganti kapan saja melalui tab **Pengaturan**. Mendukung opsi *"Ingat saya di perangkat ini"*.
- **Full CRUD Transaksi**: Tambah, Edit (modal interaktif lengkap tunai/qris/va), dan Hapus transaksi langsung tersinkronisasi ke cloud database.
- **PWA & Desktop Ready**: Dilengkapi Web App Manifest dan Service Worker (`sw.js`) sehingga dapat di-install layaknya aplikasi desktop di Windows (Edge / Chrome).
- **Vercel Ready**: Siap dideploy ke Vercel dengan routing otomatis melalui `index.html` dan `vercel.json`.
- **Cadangan Data (Backup & Restore)**: Ekspor dan impor seluruh data dalam format JSON.

---

## Cara Menjalankan Lokal

Cukup buka file `index.html` atau `app.html` langsung di browser Anda (Google Chrome, Microsoft Edge, dll), atau gunakan local server sederhana:

```bash
# Menjalankan dengan Python
python -m http.server 3000

# Atau dengan Node.js (npx serve)
npx serve .
```

---

## Cara Deploy ke Vercel

Aplikasi ini sudah disiapkan untuk Vercel:

1. Inisialisasi Git dan commit perubahan:
   ```bash
   git init
   git add .
   git commit -m "feat: setup personal app with Supabase cloud & Vercel deployment"
   ```

2. Sambungkan ke repository GitHub Anda (misal `firesky2/pnbp-twags`):
   ```bash
   git remote add origin https://github.com/firesky2/pnbp-twags.git
   git branch -M main
   git push -u origin main
   ```

3. Pada dashboard Vercel (`https://vercel.com/firesky2/pnbp-twags/settings`):
   - **Framework Preset**: *Other* (atau biarkan default)
   - **Root Directory**: `./`
   - Vercel akan otomatis mendeteksi `index.html` dan melakukan deploy.

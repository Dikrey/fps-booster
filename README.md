# 🚀 Visualcodepo Android 120Hz Boost Toolkit

Toolkit ini berisi kumpulan script shell untuk meningkatkan performa Android secara maksimal dengan mengoptimalkan refresh rate (hingga 120Hz), meningkatkan mode performa, serta memberikan kontrol penuh terhadap sistem (khusus perangkat support). Disediakan juga mode aman untuk pengguna NON-ROOT serta script reset untuk mengembalikan ke kondisi awal.

---

## 📦 Fitur Utama

- ✅ Boost Refresh Rate hingga 120Hz
- ✅ Performa maksimal di semua aplikasi (Game Mode)
- ✅ Penghapusan limitasi thermal 
- ✅ Pengaturan sistem seperti V-Sync, SF Boost (AGRESIF)
- 🟢 Disediakan juga reset script untuk restore ke default

---

## ⚠️ PERINGATAN

> Script agresif hanya untuk pengguna berpengalaman dengan perangkat yang sudah **support**. Gunakan dengan tanggung jawab dan pahami risiko overheat, battery drain, atau sistem tidak stabil.

---

## 🧪 Daftar Script

### 🔥 1. `agresif.sh` - Mode Agresif

Mengubah banyak parameter sistem menggunakan `setprop`, `thermalservice`, dan `cmd game` untuk mengaktifkan:
- Refresh rate paksa ke 120Hz
- Nonaktifkan V-Sync
- Force performance mode
- Game boosting otomatis untuk semua aplikasi

📌 **Syarat:** Perangkat support 120Hz (optional) 

### ✅ 2. `safemode.sh` - Mode Aman (Non-Root Friendly)

Hanya menggunakan `settings` dan `cmd` yang tidak membutuhkan akses root, cocok untuk:
- Menyesuaikan refresh rate ke 120Hz (jika didukung)
- Boost mode performa untuk semua aplikasi user

📌 **Syarat:** Tidak perlu root

### ♻️ 3. `reset.sh` - Restore / Reset

Mengembalikan semua pengaturan sistem ke kondisi normal:
- Refresh rate ke default (60Hz)
- Nonaktifkan mode performa dan thermal override
- Reset semua aplikasi ke mode standar

📌 **Sangat disarankan dijalankan setelah mode agresif jika ada masalah**

---

## 🔧 Cara Penggunaan

### 1. ADB Shell / Termux / Brevent
```bash
# Aktifkan booster (pilih sesuai mode)
sh safemode.sh
# atau
sh agresif.sh   # super booster

# Reset
sh reset.sh

#Brevent
sh /sdcard/fps-booster/agresif.sh

or

sh /storage/emulated/0/fps-booster/agresif.sh

# Uninstallation Command:

sh /sdcard/fps-booster/reset.sh

or

sh /storage/emulated/0/fps-booster/reset.sh


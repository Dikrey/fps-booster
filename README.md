# 🚀 Visualcodepo Android Performance Boost Toolkit

Toolkit ini berisi kumpulan script shell untuk meningkatkan performa Android secara maksimal, meningkatkan mode performa, serta memberikan kontrol penuh terhadap sistem (khusus perangkat support). Disediakan juga mode aman untuk pengguna NON-ROOT serta script reset untuk mengembalikan ke kondisi awal.

---

Skrip ini adalah alat tweak sistem yang sangat agresif bagi pengguna yang ingin memeras setiap tetes performa dari perangkat Android mereka (misalnya, untuk gaming atau benchmarking), dengan risiko mengorbankan masa pakai baterai, peningkatan panas, dan potensi ketidakstabilan sistem. Gunakan dengan risiko Anda sendiri.

---


# 📦 Fitur Utama

✅ Boost Refresh Rate hingga 120Hz: Mengoptimalkan tampilan layar untuk pengalaman visual yang lebih mulus dan responsif.
 * ✅ Performa Maksimal di Semua Aplikasi (Mode Game): Menerapkan profil performa tinggi pada setiap aplikasi, membuatnya berjalan seolah-olah sedang bermain game dengan FPS 120.
 * ✅ Penghapusan Limitasi Termal: Menonaktifkan pembatasan performa akibat panas untuk menjaga kinerja CPU/GPU tetap tinggi.
 * ✅ Pengaturan Sistem Agresif: Melakukan tweak pada V-Sync, SurfaceFlinger (SF Boost), dan parameter rendering grafis lainnya untuk mengurangi latensi dan meningkatkan responsivitas.
 * ✅ Mematikan Animasi UI: Menghilangkan animasi transisi, jendela, dan animator untuk antarmuka yang terasa lebih cepat.
 * ✅ Optimalisasi Manajemen Daya CPU: Menyesuaikan ambang batas CPU untuk memungkinkan performa puncak yang lebih berkelanjutan.
 * ✅ Manajemen Aktivitas & Aplikasi: Memastikan aplikasi tidak masuk mode standby dan langsung menutup aktivitas yang tidak digunakan untuk membebaskan RAM lebih cepat.
 * 🟢 Disediakan juga Reset Script untuk Restore ke Default: Ini adalah fitur penting yang memungkinkan pengguna mengembalikan pengaturan sistem ke kondisi semula, memastikan perangkat tidak terjebak dalam mode performa tinggi yang mungkin tidak diinginkan secara permanen.
 * 
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
- Dll

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


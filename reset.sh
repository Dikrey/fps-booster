#!/system/bin/sh

echo "
██╗░░██╗░█████╗░███╗░░██╗███████╗
██║░░██║██╔══██╗████╗░██║╚════██║
███████║███████║██╔██╗██║░░███╔═╝
██╔══██║██╔══██║██║╚████║██╔══╝░░
██║░░██║██║░░██║██║░╚███║███████╗
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚══════╝"
echo "[🔁 RESET MODE — Visualcodepo Default Restore]"
echo "▶ Mengembalikan semua pengaturan sistem ke default"
sleep 1

echo ""
echo "⚙️ Reset refresh rate settings..."
# Kembali ke default refresh rate (biasanya 60Hz)
settings put system peak_refresh_rate 60
settings put system user_refresh_rate 60
settings put system min_refresh_rate 60
settings put system thermal_limit_refresh_rate 0
settings put secure max_refresh_rate 60
settings put secure refresh_rate_mode 1
settings put secure match_content_frame_rate 0

setprop debug.hwui.fpslimit 60
setprop debug.refresh_rate.max_fps 60
setprop debug.refresh_rate.min_fps 60
setprop debug.sf.touch_boost_refreshrate 60
setprop debug.sf.scroll_boost_refreshrate 60
setprop debug.display.allow_non_native_refresh_rate_override false
setprop debug.display.render_frame_rate_is_physical_refresh_rate false
setprop debug.sf.no_hw_vsync 0
setprop debug.hwui.disable_vsync false

echo "✅ Refresh rate dan performa di-reset"

echo ""
echo "
██╗░░██╗░█████╗░███╗░░██╗███████╗
██║░░██║██╔══██╗████╗░██║╚════██║
███████║███████║██╔██╗██║░░███╔═╝
██╔══██║██╔══██║██║╚████║██╔══╝░░
██║░░██║██║░░██║██║░╚███║███████╗
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚══════╝"
echo "⚡ Menonaktifkan mode performa dan thermal override..."
cmd thermalservice override-status -1
cmd power set-fixed-performance-mode-enabled false

echo ""
echo "🧹 Reset semua aplikasi ke mode default..."
for pkg in $(pm list packages -3 | cut -f2 -d:); do
  device_config delete game_overlay $pkg
  cmd game reset $pkg
done

echo ""
cmd notification post -S bigtext -t '🔄 System Restored' 'Semua pengaturan telah dikembalikan ke default oleh Visualcodepo' > /dev/null 2>&1

echo "✅ SYSTEM RESET COMPLETED"
echo "▶ Jika masih bermasalah, reboot disarankan"
echo "📢 @Visualcodepo @raihan_official0307 | Terima kasih telah menggunakan tool ini"

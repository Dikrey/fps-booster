#!/system/bin/sh

echo "
██╗░░██╗░█████╗░███╗░░██╗███████╗
██║░░██║██╔══██╗████╗░██║╚════██║
███████║███████║██╔██╗██║░░███╔═╝
██╔══██║██╔══██║██║╚████║██╔══╝░░
██║░░██║██║░░██║██║░╚███║███████╗
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚══════╝"
echo "[ 𝗩𝗶𝘀𝘂𝗮𝗹𝗰𝗼𝗱𝗲𝗽𝗼 🔧 𝗢𝗽𝘁𝗶𝗺𝗶𝘇𝗲𝗿🟢]"
echo "▶ Version : 3.0 Safe Mode"
echo "▶ Status : No Root"
sleep 1
echo ""
echo "📱 Getting Device Info..."

DEVICE=$(getprop ro.product.model)
BRAND=$(getprop ro.product.brand)
MODEL=$(getprop ro.build.product)
ANDROID=$(getprop ro.build.version.release)
KERNEL=$(uname -r)

echo "▶ DEVICE: $DEVICE"
echo "▶ BRAND: $BRAND"
echo "▶ MODEL: $MODEL"
echo "▶ ANDROID: $ANDROID"
echo "▶ KERNEL: $KERNEL"
sleep 1
echo ""
echo "⚙️ Applying Safe Performance Settings..."
sleep 2

# refresh rate to 120Hz
settings put system peak_refresh_rate 120
settings put system min_refresh_rate 60
settings put secure user_refresh_rate 120
settings put secure max_refresh_rate 120

settings put secure match_content_frame_rate 1

for pkg in $(pm list packages -3 | cut -f2 -d:); do
    cmd game set --mode performance --fps 120 $pkg
done

cmd notification post -S bigtext -t '✅ Visualcodepo Optimizer' 'System Tweaks Applied Successfully!' > /dev/null 2>&1

echo ""
echo "
██╗░░██╗░█████╗░███╗░░██╗███████╗
██║░░██║██╔══██╗████╗░██║╚════██║
███████║███████║██╔██╗██║░░███╔═╝
██╔══██║██╔══██║██║╚████║██╔══╝░░
██║░░██║██║░░██║██║░╚███║███████╗
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚══════╝"
echo "✅ Optimal Settings Applied"
echo "✅ Safe for Non-root Devices"
echo "❗ Note: Effect depends on device capability (120Hz screen)"
echo "▶ Do not reboot unless necessary"
echo ""
echo "SUBSCRIBE | LIKE | SHARE | @Visualcodepo @raihan_official0307"

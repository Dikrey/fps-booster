#!/system/bin/sh

echo "
██╗░░██╗░█████╗░███╗░░██╗███████╗
██║░░██║██╔══██╗████╗░██║╚════██║
███████║███████║██╔██╗██║░░███╔═╝
██╔══██║██╔══██║██║╚████║██╔══╝░░
██║░░██║██║░░██║██║░╚███║███████╗
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚══════╝"
echo "[🔥 𝗩𝗶𝘀𝘂𝗮𝗹𝗰𝗼𝗱𝗲𝗽𝗼 𝗣𝗼𝘄𝗲𝗿 𝗕𝗼𝗼𝘀𝘁 𝗔𝗰𝘁𝗶𝘃𝗮𝘁𝗲𝗱🟢]"
echo "▶ Mode: Aggressive"
echo "▶ Required: ROOT access optional"
echo "▶ Developer: Raihan_official0307
sleep 1

DEVICE=$(getprop ro.product.model)
ANDROID=$(getprop ro.build.version.release)
KERNEL=$(uname -r)
echo "▶ DEVICE : $DEVICE"
echo "▶ ANDROID: $ANDROID"
echo "▶ KERNEL : $KERNEL"
sleep 1

echo ""
echo "
██╗░░██╗░█████╗░███╗░░██╗███████╗
██║░░██║██╔══██╗████╗░██║╚════██║
███████║███████║██╔██╗██║░░███╔═╝
██╔══██║██╔══██║██║╚████║██╔══╝░░
██║░░██║██║░░██║██║░╚███║███████╗
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚══════╝"
echo "⚙️ Tuning refresh rate to 120Hz..."
sleep 1

settings put system peak_refresh_rate 120
settings put system user_refresh_rate 120
settings put system min_refresh_rate 120
settings put system thermal_limit_refresh_rate 120
settings put secure max_refresh_rate 120
settings put secure match_content_frame_rate 1
settings put secure refresh_rate_mode 2
settings put global power_check_max_cpu_1 75
settings put global power_check_max_cpu_2 75
settings put global power_check_max_cpu_3 50
settings put global power_check_max_cpu_4 50
settings put global always_finish_activities 1
settings put secure game_auto_tempature 0
settings put global sem_enhanced_cpu_responsiveness 1
settings put global animator_duration_scale 0.0
settings put global transition_animation_scale 0.0
settings put global window_animation_scale 0.0
settings put global app_standby_enabled 0

setprop debug.hwui.fpslimit 120
setprop debug.refresh_rate.max_fps 120
setprop debug.refresh_rate.min_fps 120
setprop debug.sf.touch_boost_refreshrate 120
setprop debug.sf.scroll_boost_refreshrate 120
setprop debug.display.render_frame_rate_is_physical_refresh_rate true
setprop debug.display.allow_non_native_refresh_rate_override true
setprop debug.sf.no_hw_vsync 1
setprop debug.hwui.disable_vsync true
setprop debug.performance.tuning 1 
setprop debug.hwui.fps_devisor 1
setprop debug.egl.hw 1
setprop debug.sf.hw 1

setprop debug.gr.swapinterval 1
setprop debug.egl.swapinterval 1
setprop debug.renderengine.backend opengles
setprop debug.renderengine.backend vulkanthreaded
setprop debug.angle.overlay FPS:vulkan*PipelineCache*
setprop debug.javafx.animation.framerate 120
setprop debug.systemuicompilerfilter speed
setprop debug.app.performance_restricted false
setprop debug.gr.numframebuffers 3
setprop debug.egl.buffcount 4
setprop debug.sf.set_idle_timer_ms 30
setprop debug.sf.disable_backpressure 1
setprop debug.sf.latch_unsignaled 1
setprop debug.sf.enable_hwc_vds 1
setprop debug.sf.early_phase_offset_ns 500000
setprop debug.sf.early_app_phase_offset_ns 500000
setprop debug.sf.early_gl_phase_offset_ns 3000000
setprop debug.sf.early_gl_app_phase_offset_ns 15000000
setprop debug.sf.high_fps_early_phase_offset_ns 6100000
setprop debug.sf.high_fps_late_sf_phase_offset_ns 8000000
setprop debug.sf.high_fps_early_gl_phase_offset_ns 9000000
setprop debug.sf.high_fps_late_app_phase_offset_ns 1000000
setprop debug.sf.high_fps_late_sf_phase_offset_ns 8000000
setprop debug.sf.high_fps_early_gl_phase_offset_ns 9000000
setprop debug.sf.phase_offset_threshold_for_next_vsync_ns 6100000
sleep 2
setprop debug.sf.showfps 0
setprop debug.sf.showcpu 0
setprop debug.sf.showbackground 0
setprop debug.sf.shoupdates 0


echo "✅ Performance boost applied!"

echo ""
echo "⚡ Disabling thermal & enabling performance mode..."
sleep 1

cmd thermalservice override-status 0
cmd power set-fixed-performance-mode-enabled true

echo "✅ Performance mode ON"

echo ""
echo "
██╗░░██╗░█████╗░███╗░░██╗███████╗
██║░░██║██╔══██╗████╗░██║╚════██║
███████║███████║██╔██╗██║░░███╔═╝
██╔══██║██╔══██║██║╚████║██╔══╝░░
██║░░██║██║░░██║██║░╚███║███████╗
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚══════╝"
echo "🎮 Boosting all user apps to PERFORMANCE + 120FPS..."
for pkg in $(pm list packages -3 | cut -f2 -d:); do
  device_config put game_overlay $pkg mode=2,fps=120
  cmd game set --mode performance --fps 120 $pkg
done

echo "✅ Game boost completed!"

echo ""
echo "📢 Finalizing with system notifications..."
cmd notification post -S bigtext -t '🔥 120Hz Boost Active!' 'System now running at MAX PERFORMANCE!' > /dev/null 2>&1

echo ""
echo "✅ Aggressive Mode Activated Successfully!"
echo "❗ Do not reboot unless you undo the changes"
echo ""
echo "📢 SUBSCRIBE | LIKE | SHARE | @Visualcodepo"

#!/system/bin/sh

AWAKE_GOVERNOR="performance"
SLEEP_GOVERNOR="ondemand"

while true
do
    AWAKE=`cat /sys/power/wait_for_fb_wake`
    case "$AWAKE" in
        "awake")
            echo $AWAKE_GOVERNOR > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
            log -p i -t scrstate_scaling "awake - switching CPU frequency governor to -> $AWAKE_GOVERNOR"
            AWAKE=
        ;;
    esac
    SLEEPING=`cat /sys/power/wait_for_fb_sleep`
    case "$SLEEPING" in
        "sleeping")
            echo $SLEEP_GOVERNOR > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
            log -p i -t scrstate_scaling "sleeping - switching CPU frequency governor to -> $SLEEP_GOVERNOR"
            SLEEPING=
        ;;
    esac
done


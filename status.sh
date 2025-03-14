# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# Produces "21 days", for example
uptime_formatted=$(free -m | grep Mem | awk '{printf "%.1f", $3/$2 * 100}')

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %m-%d-%y %H:%M")
diskfree=$(df -h | grep /dev/mmcblk0p3 | awk '{print $5}')
#Returns Battery time left
battery_time=$(acpi | awk '{print $5}')
# Returns the battery status: "Full", "Discharging", or "Charging".
battery_status=$(cat /sys/class/power_supply/BAT0/capacity)
tree=$(echo "Let's all love lain")
# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
echo $tree "|Disk-used" $diskfree "|Mem-used: "$uptime_formatted"%""| Battery:" $battery_status"% "$battery_time "|" $date_formatted"|"

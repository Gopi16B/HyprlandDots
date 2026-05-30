

require("keybinds")
require("windowrule")
require("environmental")
require("Animation")
require("input")


--------------
-- MONITORS --
--------------


hl.monitor({
	output = "eDP-1",
	mode="1920x1080@60",
	position="-1920x0",
	scale = 1,
})
hl.monitor({
	output = "HDMI-A-2",
	mode="1920x1080@60",
	position="0x0",
	scale = 1,
})





--------------
--Auto Start--
--------------

hl.on("hyprland.start",function()
	hl.exec_cmd("mako")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("steam")
	hl.exec_cmd("discord")
	hl.exec_cmd("spotify")
	hl.exec_cmd("waybar")
	hl.exec_cmd("/home/dibas/.config/hypr/changewall1.sh")
end)




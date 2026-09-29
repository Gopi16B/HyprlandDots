

require("keybinds")
require("windowrule")
require("environmental")
require("Animation")
require("input")


--------------
-- MONITORS --
--------------


hl.monitor({
	output = "DP-3",
	mode = "1920x1080@144",
	position = "1x0",
	scale = 1,
})
hl.monitor({
	output = "HDMI-A-2",
	mode = "1920x1080@60",
	position = "-1980x0", -- Shifted 1px right to stop accidental cursor rollover
	scale = 1,
})



-------------------
-- ENV VARIABLES --
-------------------

hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORM", "wayland")

hl.on("hyprland.start", function()
    hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
    
end)


-- Blur effect
hl.config({
    decoration = {
        blur = {
            enabled = true,
            size = 6,
            passes = 2,
            noise =  0.08,
            contrast  = 1.3,

        }
    }
})



-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")




--------------
--Auto Start--
--------------

hl.on("hyprland.start",function()
	hl.exec_cmd("spotify")
	hl.exec_cmd("mako")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("steam")
	hl.exec_cmd("waybar")
	hl.exec_cmd("/home/dibas/.config/hypr/changewall1.sh")
	hl.exec_cmd("discord")
	
end)



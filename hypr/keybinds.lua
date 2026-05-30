-----------------------------
----      BINDINGS       ----
-----------------------------
local terminal = "alacritty"
local filemanager = "thunar"
local menu = "rofi -show drun"

local mainMod = "ALT"


hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(filemanager))
hl.bind("ALT + S", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(mainMod.. "+ W", hl.dsp.exec_cmd("/home/dibas/.config/rofi/wallpaper.sh"))
hl.bind(mainMod.. "+ R", hl.dsp.exec_cmd("/home/dibas/.config/hypr/changewall1.sh"))
hl.bind(mainMod .. " + C", hl.dsp.window.close())

for i = 1, 9 do 
    hl.bind(mainMod .. "+" .. i , hl.dsp.focus({workspace = i}))
    hl.bind(mainMod .. "+SHIFT+" .. i , hl.dsp.window.move({workspace = i}))
end

hl.bind(mainMod .. "+" .. 0 , hl.dsp.focus({workspace = 10}))
hl.bind(mainMod .. "+SHIFT+" .. 0 , hl.dsp.window.move({workspace = 10}))


hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })



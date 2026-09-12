-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

local terminal = "omarchy-launch-terminal"
local browser = "omarchy-launch-browser"

-- ===== Unbinds =====

-- Terminal / files / browser
hl.unbind("SUPER + ALT + RETURN")
hl.unbind("SUPER + RETURN")
hl.unbind("SUPER + SHIFT + RETURN")
hl.unbind("SUPER + SHIFT + F")
hl.unbind("SUPER + SHIFT + C")
hl.unbind("SUPER + SHIFT + X")
hl.unbind("SUPER + SHIFT + S")
hl.unbind("SUPER + SHIFT + G")
hl.unbind("SUPER + SHIFT + E")
hl.unbind("SUPER + SHIFT + P")
hl.unbind("SUPER + ALT + SHIFT + F")
hl.unbind("SUPER + B")
hl.unbind("SUPER + SHIFT + B")
hl.unbind("SUPER + S")
hl.unbind("SUPER + U")

-- Apps
hl.unbind("SUPER + M")
hl.unbind("SUPER + N")
hl.unbind("SUPER + SHIFT + D")
hl.unbind("SUPER + O")

-- Webapps
hl.unbind("SUPER + A")
hl.unbind("SUPER + SHIFT + A")

-- Walker
hl.unbind("SUPER + D")
hl.unbind("SUPER + SPACE")
hl.unbind("SUPER + ALT + SPACE")

-- Close window
hl.unbind("SUPER + Q")
hl.unbind("SUPER + W")

-- Window navigation
hl.unbind("SUPER + H")
hl.unbind("SUPER + L")
hl.unbind("SUPER + K")
hl.unbind("SUPER + J")
hl.unbind("SUPER + SHIFT + H")
hl.unbind("SUPER + SHIFT + L")
hl.unbind("SUPER + SHIFT + K")
hl.unbind("SUPER + SHIFT + J")
hl.unbind("SUPER + LEFT")
hl.unbind("SUPER + RIGHT")
hl.unbind("SUPER + UP")
hl.unbind("SUPER + DOWN")
hl.unbind("SUPER + SHIFT + LEFT")
hl.unbind("SUPER + SHIFT + RIGHT")
hl.unbind("SUPER + SHIFT + UP")
hl.unbind("SUPER + SHIFT + DOWN")
hl.unbind("SUPER + G")

-- Captures
hl.unbind("SUPER + Z")
hl.unbind("SUPER + SHIFT + Z")
hl.unbind("SUPER + ALT + Z")
hl.unbind("SUPER + SHIFT + ALT + Z")
hl.unbind("PRINT")
hl.unbind("SHIFT + PRINT")
hl.unbind("ALT + PRINT")
hl.unbind("SUPER + PRINT")

-- Other freed defaults (no rebind)
hl.unbind("SUPER + P")
hl.unbind("SUPER + mouse_down")
hl.unbind("SUPER + mouse_up")
hl.unbind("SUPER + SHIFT + SPACE")
hl.unbind("SUPER + SHIFT + CTRL + SPACE")
hl.unbind("SUPER + BACKSPACE")
hl.unbind("SUPER + SHIFT + BACKSPACE")

-- ===== Binds =====

-- Terminal / files / browser

hl.bind("SUPER + U", hl.dsp.layout("togglesplit"))

hl.bind("SUPER + ALT + RETURN", hl.dsp.exec_cmd("uwsm-app -- xdg-terminal-exec --dir=\"$(omarchy-cmd-terminal-cwd)\" tmux new"))

hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("uwsm-app -- " .. terminal .. " --working-directory=\"$(omarchy-cmd-terminal-cwd)\""))

hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd("uwsm-app -- nautilus --new-window"))

hl.bind("SUPER + ALT + SHIFT + F", hl.dsp.exec_cmd("uwsm-app -- nautilus --new-window \"$(omarchy-cmd-terminal-cwd)\""))

hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))

hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd(browser .. " --private"))

-- Apps

hl.bind("SUPER + M", hl.dsp.exec_cmd("omarchy-launch-or-focus spotify"))

hl.bind("SUPER + N", hl.dsp.exec_cmd("omarchy-launch-editor"))

hl.bind("SUPER + O", hl.dsp.exec_cmd("omarchy-launch-or-focus \"^obsidian$\" \"uwsm-app -- obsidian -disable-gpu --enable-wayland-ime\""))

-- Webapps
-- If your web app url contains #, type it as ## to prevent hyperland treat it as comments

hl.bind("SUPER + A", hl.dsp.exec_cmd("omarchy-launch-webapp \"https://chatgpt.com\""))
hl.bind("SUPER + S", hl.dsp.exec_cmd("uwsm-app -- " .. terminal .. " -e opencode \"$(omarchy-cmd-terminal-cwd)\""))
hl.bind("SUPER + SHIFT + A", hl.dsp.exec_cmd("omarchy-launch-webapp \"https://claude.ai/new\""))

-- Walker
hl.bind("SUPER + ALT + D", hl.dsp.exec_cmd("omarchy-menu toggle"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("omarchy-menu toggle apps"))

-- Close Window

hl.bind("SUPER + Q", hl.dsp.window.close())

-- Window Navigation

hl.bind("SUPER + H", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "down" }))

hl.bind("SUPER + SHIFT + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.swap({ direction = "down" }))

-- Captures
hl.bind("SUPER + Z", hl.dsp.exec_cmd("omarchy-menu toggle capture"))

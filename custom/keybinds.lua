-- This file will not be overwritten across dots-hyprland updates.
-- The file name is for the sake of organization and does not matter
-- See the corresponding files in ~/.config/hypr/hyprland for examples

local qsScripts = "$HOME/.config/quickshell/$qsConfig/scripts"
local hyprScripts = "$HOME/.config/hypr/hyprland/scripts"
local qsIpcCall = "qs -c $qsConfig ipc call"
local qsIsAlive = qsIpcCall .. " TEST_ALIVE"

hl.bind("SUPER + SHIFT + Q", hl.dsp.exec_cmd("~/.config/hypr/custom/scripts/KillActiveProcess.sh"))

hl.unbind("Super, Slash")

hl.bind("SUPER + H", hl.dsp.global("quickshell:cheatsheetToggle"), { description = "Shell: Toggle cheatsheet" })

for i = 1, 10 do
    local numpadkey = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
    hl.bind("SUPER + SHIFT + code:" .. numpadkey[i], function()
        hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = false }))
		hl.dispatch(hl.dsp.focus({ workspace = workspace_in_group(i) }))
    end)
end




hl.unbind("Super + B")
hl.unbind("Super + W")
hl.unbind("Super + Shift + T")
hl.unbind("Super + Shift + X")
hl.unbind("Super + D")
hl.unbind("Super + F")

-- Quickshell Sidebar
hl.bind("SUPER + W", hl.dsp.global("quickshell:sidebarLeftToggle"))

-- Browser
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser), { description = "App: Browser" })

-- Character recognition >> clipboard
hl.bind("SUPER + SHIFT + T", hl.dsp.global("quickshell:regionOcr"),
    { description = "Utilities: Character recognition >> clipboard" })
hl.bind("SUPER + SHIFT + T", hl.dsp.exec_cmd(
    qsIsAlive ..
    " || pidof slurp || grim -g \"$(slurp $SLURP_ARGS)\" \"/tmp/ocr_image.png\" && tesseract \"/tmp/ocr_image.png\" stdout -l $(tesseract --list-langs | awk 'NR>1{print $1}' | tr '\\\\n' '+' | sed 's/\\\\+$/\\\\n/') | wl-copy && rm \"/tmp/ocr_image.png\""
))

-- Translate screen content
hl.bind("SUPER + SHIFT + X", hl.dsp.global("quickshell:screenTranslate"),
    { description = "Utilities: Translate screen content" })

-- Maximize
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }),
    { description = "Window: Maximize" })

-- Fullscreen
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }),
    { description = "Window: Fullscreen" })


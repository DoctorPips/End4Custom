-- This file will not be overwritten across dots-hyprland updates.
-- The file name is for the sake of organization and does not matter
-- See the corresponding files in ~/.config/hypr/hyprland for examples

hl.window_rule {
    name = "linux-gremlin",
    no_blur = true,
    no_shadow = true,
    border_size = 0,
    match = {
        title = "ilgwg_desktop_gremlins.py",
    },
}

hl.window_rule({
	match = { tag = "browser"},
	workspace = "2"
})

hl.window_rule({
	match = { tag = "gamestore"},
	workspace = "4"
})

hl.window_rule({
	match = { tag = "im"},
	workspace = "3"
})

hl.window_rule({
	match = { tag = "games"},
	workspace = "1"
})

hl.window_rule({
	match = { tag = "thorium"},
	workspace = "3"
})

-- Tags
hl.window_rule({
    match = {
        -- Combined regex matching all specified browser classes
        class = "^([Ff]irefox|org\\.mozilla\\.firefox|[Ff]irefox-esr|[Ff]irefox-bin|[Gg]oogle-chrome(-beta|-dev|-unstable)?|chrome-.+-Default|[Cc]hromium|[Mm]icrosoft-edge(-stable|-beta|-dev|-unstable)|[Bb]rave-browser(-beta|-dev|-unstable)?|zen-alpha|zen)$"
    },
    tag = "+browser"
})   

hl.window_rule({
	match = {
		class = "^([Tt]horium-browser|[Cc]achy-browser)$"
	},
	tag = "+thorium"
})

hl.window_rule({
	match = {
		class = "^([Dd]iscord|[Ww]ebCord|[Vv]esktop)$"
	},
	tag = "+im"
})

hl.window_rule({
	match = {
		class = "^(steam_app_\\d+|gamescope)$"
	},
	tag = "+games"
})

hl.window_rule({
	match = {
		class = "^([Ss]team|com\\.heroicgameslauncher\\.hgl)$"
	},
	tag = "+gamestore"
})

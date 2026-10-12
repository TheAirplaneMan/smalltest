minetest.register_on_joinplayer(function(player)
	player:set_properties({
		visual = "upright_sprite",
		eye_height = "0.25",
		visual_size = { x = 1, y = 1 },
		textures = { "smalltest_player.png", "smalltest_player_back.png" },
	})

	player:set_sky({
		base_color = "#000000",
		type = "regular",
		sky_color = {
			day_sky = "#000000",
			day_horizon = "#000000",

			dawn_sky = "#000000",
			dawn_horizon = "#000000",

			night_sky = "#000000",
			night_horizon = "#000000",

			indoors = "#000000",
		}
	})

	player:set_clouds({
		density = 0.3,
		color = "#ffffff",
		thickness = 0,
		speed = {x=0,z=0}
	})
end)
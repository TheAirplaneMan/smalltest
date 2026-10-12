minetest.register_alias("mapgen_stone", "smalltest_terrain:stone")

minetest.register_node("smalltest_terrain:stone", {
	description = ("Stone"),
	tiles = {"smalltest_terrain_stone.png"},
	groups = {cracky = 2},
	drop = "smalltest_items:stone_loose 2",
--	sounds = default.node_sound_stone_defaults(),
	node_dig_prediction = "smalltest_terrain:stone_broken",

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "smalltest_terrain:stone_broken"})
	end,
})

minetest.register_node("smalltest_terrain:stone_broken", {
	description = ("Broken Stone"),
	tiles = {"smalltest_terrain_stone_broken.png"},
	groups = {cracky = 2},
	drop = "smalltest_items:stone_loose 2",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("smalltest_terrain:dirt", {
	description = ("Dirt"),
	tiles = {"smalltest_terrain_dirt.png"},
	groups = {crumbly = 1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("smalltest_terrain:dirt_riverbed", {
	description = ("Dirt Riverbed"),
	tiles = {"smalltest_terrain_dirt_riverbed.png"},
	groups = {crumbly = 1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("smalltest_terrain:grass", {
	description = ("Grass"),
	tiles = {"smalltest_terrain_grass.png", "smalltest_terrain_dirt.png", "smalltest_terrain_dirt.png"},
	groups = {crumbly = 1},
--	sounds = default.node_sound_stone_defaults(),
})

local modpath = minetest.get_modpath("smalltest_terrain")

dofile(modpath.."/biomes.lua")
dofile(modpath.."/slopes.lua")

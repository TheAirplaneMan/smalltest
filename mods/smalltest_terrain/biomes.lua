minetest.register_biome({
	name = "forest",
	node_top = "smalltest_terrain:grass",
	depth_top = 1,
	node_filler = "smalltest_terrain:dirt",
	depth_filler = 1,
	node_riverbed = "smalltest_terrain:dirt",
	depth_riverbed = 1,
	node_dungeon = "smalltest_terrain:dirt_riverbed",
	y_max = 31000,
	y_min = 1,
	heat_point = 50,
	humidity_point = 50,
})
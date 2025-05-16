local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
	{
		type = "item",
		name = "gleba-artificial-tree-soil",
		icon = "__gleba-carbon-plus__/graphics/icons/gleba-artificial-tree-soil.png",
		icon_size = 64,
		stack_size = 100,
		default_import_location = "gleba",
		subgroup = "terrain",
		order = "c[landfill]-f[gleba-artificial-tree-soil]",
		inventory_move_sound = item_sounds.landfill_inventory_move,
		pick_sound = item_sounds.landfill_inventory_pickup,
		drop_sound = item_sounds.landfill_inventory_move,		
		place_as_tile = {
			result = "gleba-artificial-tree-soil-tile",
			condition_size = 1,
			condition = { layers={} },
			tile_condition = {"midland-turquoise-bark",
								"midland-turquoise-bark-2",
								"midland-cracked-lichen",
								"midland-cracked-lichen-dark",
								"midland-cracked-lichen-dull",
								"midland-yellow-crust",
								"midland-yellow-crust-2",
								"highland-yellow-rock",
								"highland-dark-rock",
								"highland-dark-rock-2"}	
		},
	}
})
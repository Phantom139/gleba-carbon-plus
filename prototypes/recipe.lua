local biocoal_craft_time = settings.startup["biocoal-crafting-time"].value
local biocoal_wood_cost = settings.startup["biocoal-wood-cost"].value
local biocoal_spoilage_cost = settings.startup["biocoal-spoilage-cost"].value
local biocoal_coal_output = settings.startup["biocoal-coal-output"].value

data:extend({
	{
		type = "recipe",
		name = "gleba-artificial-tree-soil",
		category = "crafting",
		surface_conditions = {
			{
				property = "pressure",
				min = 2000,
				max = 2000
			}
		},
		icon = "__gleba-carbon-plus__/graphics/icons/gleba-artificial-tree-soil.png",
		icon_size = 64,		
		energy_required = 5,
		enabled = false,
		ingredients = {
			{ type="item", name="landfill",  amount=10 },
			{ type="item", name="tree-seed", amount=5  },
			{ type="item", name="spoilage",  amount=25 },
			{ type="item", name="biter-egg", amount=10 },
		},
		results = {{type="item", name="gleba-artificial-tree-soil", amount=2}},
		allow_productivity = true,
		auto_recycle = false
	},
	{
		type = "recipe",
		name = "biocoal",
		category = "organic",
		subgroup = "agriculture-products",
		order = "a[organic-products]-i[biocoal]",
		icon = "__gleba-carbon-plus__/graphics/icons/biocoal.png",
		icon_size = 64,			
		energy_required = biocoal_craft_time,
		enabled = false,
		ingredients = {
			{ type="item", name="wood",  amount=biocoal_wood_cost },
			{ type="item", name="spoilage",  amount=biocoal_spoilage_cost },
		},
		results = {{type="item", name="coal", amount=biocoal_coal_output}},
		allow_productivity = true,
		auto_recycle = false,
		crafting_machine_tint = {
			primary = {r = 0.134, g = 0.009, b = 0.009, a = 1.000},
			secondary = {r = 0.377, g = 0.255, b = 0.255, a = 1.000},
		}	
	},	
})
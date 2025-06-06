data:extend({
	{
		type = "bool-setting",
		name = "enable-fruit-productivity",
		setting_type = "startup",
		default_value = true,
		order = "a",
	},
	{
		type = "double-setting",
		name = "fruit-productivity-cost-scaling",
		setting_type = "startup",
		minimum_value = 1.0,
		default_value = 1.5,
		order = "b",	
	},
	{
		type = "double-setting",
		name = "biocoal-crafting-time",
		setting_type = "startup",
		minimum_value = 0.1,
		default_value = 6.0,
		order = "c",	
	},	
	{
		type = "int-setting",
		name = "biocoal-wood-cost",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 8,
		order = "d",	
	},	
	{
		type = "int-setting",
		name = "biocoal-spoilage-cost",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 4,
		order = "e",	
	},	
	{
		type = "int-setting",
		name = "biocoal-coal-output",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 2,
		order = "f",	
	},	
})
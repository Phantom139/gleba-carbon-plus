data:extend(
  {
    {
      type = "technology",
      name = "gleba-tree-seeding",
      icon = "__gleba-carbon-plus__/graphics/technology/gleba-tree-seeding.png",
      icon_size = 256,
      prerequisites = { "tree-seeding", "biter-egg-handling" },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "gleba-artificial-tree-soil"
        }
      },
      unit =
      {
        count = 2500,
        ingredients =
        {
          { "automation-science-pack",      1 },
          { "logistic-science-pack",        1 },
          { "chemical-science-pack",        1 },
          { "production-science-pack",      1 },
          { "utility-science-pack",         1 },
          { "space-science-pack",           1 },
          { "agricultural-science-pack",    1 }
        },
        time = 30
      }
	},
    {
      type = "technology",
      name = "biocoal",
      icon = "__gleba-carbon-plus__/graphics/technology/biocoal.png",
      icon_size = 256,
      prerequisites = { "advanced-asteroid-processing", "rocket-turret", "gleba-tree-seeding" },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "biocoal"
        }
      },
      unit =
      {
        count = 5000,
        ingredients =
        {
          { "automation-science-pack",      1 },
          { "logistic-science-pack",        1 },
          { "chemical-science-pack",        1 },
          { "production-science-pack",      1 },
          { "utility-science-pack",         1 },
          { "space-science-pack",           1 },
          { "agricultural-science-pack",    1 }
        },
        time = 30
      }
	},	
})

if settings.startup["enable-fruit-productivity"].value then
	local cost_scaling = settings.startup["fruit-productivity-cost-scaling"].value
	local cost_formula = string.format("(%s)^(L-1)*1000", cost_scaling)

	data:extend({
		{
		  type = "technology",
		  name = "fruit-productivity",
		  icons = util.technology_icon_constant_productivity("__gleba-carbon-plus__/graphics/technology/gleba-fruit-productivity.png"),
		  effects =
		  {
			{
			  type = "change-recipe-productivity",
			  recipe = "yumako-processing",
			  change = 0.1
			},
			{
			  type = "change-recipe-productivity",
			  recipe = "jellynut-processing",
			  change = 0.1
			},
			{
			  type = "change-recipe-productivity",
			  recipe = "bioflux",
			  change = 0.1
			}
		  },
		  prerequisites = { "agricultural-science-pack" },
		  unit =
		  {
			count_formula = cost_formula,
			ingredients =
			{
			  { "automation-science-pack",  1 },
			  { "logistic-science-pack",    1 },
			  { "chemical-science-pack",    1 },
			  { "production-science-pack",  1 },
			  { "space-science-pack",       1 },
			  { "agricultural-science-pack", 1 }
			},
			time = 60
		  },
		  max_level = "infinite",
		  upgrade = true
		},	
	})
end
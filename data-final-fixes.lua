local pressureMin = 1000
local pressureMax = 2000

if mods["lignumis"] then
	pressureMin = 900
end

local gcp_surface_condition = { { property = "pressure", min = pressureMin, max = pressureMax } }

-- Function to patch a plant prototype
local function patch_plant(plant)
	if plant and plant.type == "plant" then
		plant.surface_conditions = gcp_surface_condition
	end
end	

-- 1. Patch the original tree-plant if it exists
patch_plant(data.raw.plant["tree-plant"])
table.insert(data.raw["plant"]["tree-plant"].autoplace.tile_restriction, "gleba-artificial-tree-soil-tile")

-- 2. Patch Diversitree clones
if mods["Diversitree"] then
	log("[gleba-carbon-plus] Diversitree mod detected, performing patches on fake plant entity")
	for name, proto in pairs(data.raw.plant) do
		if name == "s6xdvt-fake-tree" then
			log("[gleba-carbon-plus] calling patch_plant on " .. name)
			patch_plant(proto)
			table.insert(data.raw.plant[name].autoplace.tile_restriction, "gleba-artificial-tree-soil-tile")
		end
	end	
end
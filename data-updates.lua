local pressureMin = 1000
local pressureMax = 2000

if mods["lignumis"] then
	pressureMin = 900
end

-- Update the wood processing recipe to be allowed on Gleba
data.raw["recipe"]["wood-processing"].surface_conditions = { {property = "pressure", min = pressureMin, max = pressureMax}}
-- Update tree-plant to allow for planting on Gleba on the new tile
data.raw["plant"]["tree-plant"].surface_conditions = { {property = "pressure", min = 1000, max = 2000}}
table.insert(data.raw["plant"]["tree-plant"].autoplace.tile_restriction, "gleba-artificial-tree-soil-tile")
-- Update the wood processing recipe to be allowed on Gleba
data.raw["recipe"]["wood-processing"].surface_conditions = { {property = "pressure", min = 1000, max = 2000}}
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")

local tileClone = table.deepcopy(data.raw["tile"]["grass-1"])
tileClone.name = "gleba-artificial-tree-soil-tile"
tileClone.order = "a[artificial]-d[utility]"
tileClone.subgroup = "artificial-tiles"
tileClone.minable = {mining_time = 0.5, result = "gleba-artificial-tree-soil"}
tileClone.layer_group = "ground-artificial"
tileClone.map_color = {r = 24, g = 232, b = 115}
data:extend({ tileClone })
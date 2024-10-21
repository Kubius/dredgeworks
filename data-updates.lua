require("__dredgeworks__/prototypes/resources")
local collision_mask_util = require("collision-mask-util")

data:extend({{type = "collision-layer", name = "refined_concrete"}})

for _, tile in pairs(data.raw.tile) do
    tile.check_collision_with_entities = true -- necessary to prohibit replacing refined concrete with other materials to "stretch" it infinitely
    if tile.name == "refined-concrete" or tile.name == "refined-hazard-concrete-left" or tile.name == "refined-hazard-concrete-right" then
        tile.collision_mask.layers["refined_concrete"] = true
    end
end

for _, item in pairs(data.raw.item) do
    if item.place_as_tile ~= nil and (item.name ~= "refined-concrete" and item.name ~= "refined-hazard-concrete") then
        item.place_as_tile.condition.layers["refined_concrete"] = true
    end
end

require("__dredgeworks__/prototypes/inserter_flotation")
require("__dredgeworks__/prototypes/technologies")
require("__dredgeworks__/prototypes/item")
require("__dredgeworks__/prototypes/recipe")
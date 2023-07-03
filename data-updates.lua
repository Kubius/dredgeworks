require("__dredgeworks__/prototypes/resources")
local collision_mask_util = require("collision-mask-util")

refined_concrete_layer = collision_mask_util.get_first_unused_layer()
for _, tile in pairs(data.raw.tile) do
    tile.check_collision_with_entities = true
    if tile.name == "refined-concrete" or tile.name == "refined-hazard-concrete-left" or tile.name == "refined-hazard-concrete-right" then
        tile.collision_mask = {"ground-tile",refined_concrete_layer}
    end
end

for _, item in pairs(data.raw.item) do
    if item.place_as_tile ~= nil and (item.name ~= "refined-concrete" and item.name ~= "refined-hazard-concrete") then
        table.insert(item.place_as_tile.condition,refined_concrete_layer)
    end
end

require("__dredgeworks__/prototypes/inserter_flotation")
require("__dredgeworks__/prototypes/technologies")
require("__dredgeworks__/prototypes/item")
require("__dredgeworks__/prototypes/recipe")
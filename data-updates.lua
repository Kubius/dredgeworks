require("__dredgeworks__/prototypes/resources")
require("__dredgeworks__/prototypes/technologies")
local collision_mask_util = require("collision-mask-util")

for _, inserter_entry in pairs(floating_inserter_index) do
    local base_item = table.deepcopy(data.raw["item"][inserter_entry[3]])
    local floatserter = table.deepcopy(data.raw["item"][inserter_entry[3]])
    floatserter.name = inserter_entry[1]
    floatserter.localised_name = inserter_entry[2]
    floatserter.icons = {
        {icon = DREDGEPATH .. "icons/flotation-platform.png"},
        {icon = base_item.icon}
    }
    floatserter.order = "q-" .. base_item.order
    floatserter.place_result = inserter_entry[1]
    data:extend{floatserter}
end

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
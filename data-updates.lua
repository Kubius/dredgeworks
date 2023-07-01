require("__dredgeworks__/prototypes/resources")
local collision_mask_util = require("collision-mask-util")

local to_add = {}

for _, prototype in pairs(data.raw["inserter"]) do
  local floating_inserter = table.deepcopy(prototype)
  floating_inserter.name = "floating-" .. prototype.name
  floating_inserter.localised_name = {"dredgeworks.floated", prototype.localised_name or ({"entity-name." .. prototype.name})}
  floating_inserter.minable = {mining_time = 0.1, result = "floating-" .. prototype.name}
  floating_inserter.collision_mask = {'ground-tile','object-layer'}
  if(prototype.fast_replaceable_group) then
    floating_inserter.fast_replaceable_group = "floating-" .. prototype.fast_replaceable_group
  end
  floating_inserter.next_upgrade = nil
  floating_inserter.platform_picture = {
    sheets = {
      {
        filename = DREDGEPATH .. "entity/flotation-platform.png",
        priority = "extra-high",
        width = 32,
        height = 32,
        shift = {0, 0.1},
        hr_version =
        {
          filename = DREDGEPATH .. "entity/hr-flotation-platform.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          shift = {0, 0.1},
          scale = 0.5
        }
      },
      floating_inserter.platform_picture.sheet
    }
  }
  
  local mine_target = prototype.minable["result"]

  table.insert(floating_inserter_index,
    {
      floating_inserter.name,
      floating_inserter.localised_name,
      prototype.name,
      mine_target
    }
  )
  table.insert(to_add,floating_inserter)
end

data:extend(to_add)

for entry_number, inserter_entry in pairs(floating_inserter_index) do
    if(not data.raw["item"][inserter_entry[1]]) then -- avoid duplicates from redundant mine results
        local floatserter = table.deepcopy(data.raw["item"][inserter_entry[4]])
        floatserter.name = inserter_entry[1]
        floatserter.localised_name = inserter_entry[2]
        if (floatserter.icons) then
            table.insert(floatserter.icons,1,{icon = DREDGEPATH .. "icons/flotation-platform.png", icon_size = 64})
        else
            floatserter.icons = {
                {icon = DREDGEPATH .. "icons/flotation-platform.png", icon_size = 64},
                {icon = floatserter.icon}
            }
        end
        floatserter.order = "q-" .. floatserter.order
        floatserter.place_result = inserter_entry[1]
        data:extend{floatserter}
    end
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

require("__dredgeworks__/prototypes/technologies")
require("__dredgeworks__/prototypes/item")
require("__dredgeworks__/prototypes/recipe")
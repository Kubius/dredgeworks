local belts_to_add = {}
local target_belts = {}

if (settings.startup["limit_belt_flotation"].value == false) then
  target_belts = data.raw["transport-belt"]
else
  target_belts = {
    data.raw["transport-belt"]["transport-belt"],
    data.raw["transport-belt"]["fast-transport-belt"],
    data.raw["transport-belt"]["express-transport-belt"]
  }
end

for _, prototype in pairs(target_belts) do
  if (prototype.minable) then
    local floating_belt = table.deepcopy(prototype)
    floating_belt.name = "floating-" .. prototype.name
    floating_belt.subgroup = "belt-floating"
    floating_belt.localised_name = {"dredgeworks.floated", prototype.localised_name or ({"entity-name." .. prototype.name})}
    floating_belt.minable = {mining_time = 0.1, result = "floating-" .. prototype.name}
    floating_belt.collision_mask = {layers = {ground_tile = true,object = true,transport_belt = true,lava_tile = true}}
    floating_belt.fast_replaceable_group = "floating-transport-belt"
    floating_belt.next_upgrade = nil

    floating_belt.belt_animation_set.animation_set.tint = {175,200,190}
    floating_belt.belt_animation_set.animation_set.tint_as_overlay = true
      
    local mine_target = prototype.minable["result"]

    table.insert(floating_belt_index,
      {
        floating_belt.name,
        floating_belt.localised_name,
        prototype.name,
        mine_target
      }
    )
    table.insert(belts_to_add,floating_belt)
  end
end

data:extend(belts_to_add)

for entry_number, belt_entry in pairs(floating_belt_index) do
  if(not data.raw["item"][belt_entry[1]]) then -- avoid duplicates from redundant mine results
    local floatybelt = table.deepcopy(data.raw["item"][belt_entry[4]])
    floatybelt.name = belt_entry[1]
    floatybelt.localised_name = belt_entry[2]
    if (floatybelt.icons) then
      table.insert(floatybelt.icons,{icon = DREDGEPATH .. "icons/floating-belt.png", icon_size = 64})
    else
      floatybelt.icons = {
          {icon = floatybelt.icon, icon_size = floatybelt.icon_size},
          {icon = DREDGEPATH .. "icons/floating-belt.png", icon_size = 64}
      }
    end
    floatybelt.order = "q-" .. (floatybelt.order or "x")
    floatybelt.place_result = belt_entry[1]
    data:extend{floatybelt}
  end
end

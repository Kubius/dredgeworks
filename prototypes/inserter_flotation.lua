local inserters_to_add = {}

local target_list
if (settings.startup["limit_inserter_flotation"].value == false) then
  target_list = data.raw["inserter"]
else
  target_list = {
    data.raw["inserter"]["burner-inserter"],
    data.raw["inserter"]["inserter"],
    data.raw["inserter"]["fast-inserter"],
    data.raw["inserter"]["long-handed-inserter"],
    data.raw["inserter"]["bulk-inserter"]
  }
  if mods["space-age"] then table.insert(target_list,data.raw["inserter"]["stack-inserter"]) end
end

local function inserter_eval(target_inserter)
  if not target_inserter.minable then log("dredgeworks: no minable") return end
  if target_inserter.draw_held_item == false then log("dredgeworks: no dhi") return end
  if not (target_inserter.hand_base_picture and target_inserter.hand_base_picture["width"] ~= 1) then log("dredgeworks: no hbp") return end
  if target_inserter.name == "ee-super-inserter" then return end
  return true
end

if (target_list) then
  for _, prototype in pairs(target_list) do
    if inserter_eval(prototype) then
      local floating_inserter = table.deepcopy(prototype)
      floating_inserter.name = "floating-" .. prototype.name
      floating_inserter.localised_name = {"dredgeworks.floated", prototype.localised_name or ({"entity-name." .. prototype.name})}
      floating_inserter.minable = {mining_time = 0.1, result = "floating-" .. prototype.name}
      floating_inserter.collision_mask = {layers = {ground_tile = true,object = true,lava_tile = true}}
      if(prototype.fast_replaceable_group) then
        floating_inserter.fast_replaceable_group = "floating-" .. prototype.fast_replaceable_group
      end
      floating_inserter.next_upgrade = nil
      floating_inserter.platform_picture = {
        sheets = {
          {
            filename = DREDGEPATH .. "entity/flotation-platform.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            scale = 0.5,
            shift = {0, 0.1}
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
      table.insert(inserters_to_add,floating_inserter)
    end
  end

  data:extend(inserters_to_add)

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
                  {icon = floatserter.icon, icon_size = floatserter.icon_size}
              }
          end
          floatserter.order = "q-" .. (floatserter.order or "x")
          floatserter.place_result = inserter_entry[1]
          data:extend{floatserter}
      end
  end
end
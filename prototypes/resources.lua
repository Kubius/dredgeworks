-- Sea resource definitions --------------------------------------------------------
local submerged_ores = {}

for _, prototype in pairs(data.raw.resource) do
  if (not do_not_submerge[prototype.name]) and ((prototype.category == nil and prototype.stages) or prototype.category == "basic-solid") then
    local deep_ore = table.deepcopy(prototype)

    log("dredgeworks: creating submerged ".. prototype.name)

    deep_ore.name = "deep-" .. prototype.name
    deep_ore.localised_name = {"dredgeworks.submerged", prototype.localised_name or ({"entity-name." .. prototype.name})}
    deep_ore.localised_description = {"dredgeworks.submerged-desc"}
    deep_ore.autoplace = nil
    deep_ore.protected_from_tile_building = false
    deep_ore.collision_mask = {layers = {ground_tile = true,resource = true}, colliding_with_tiles_only = true}
    deep_ore.water_reflection = nil

    for _, adjusticon in pairs(deep_ore.stages) do
      adjusticon.tint = {0.3,0.3,0.3,0.6}
      if(adjusticon.hr_version) then
        adjusticon.hr_version.tint = {0.3,0.3,0.3,0.6}
      end
    end
    table.insert(submerged_ores,deep_ore)
  end
end

if(submerged_ores[1]) then
  data:extend(submerged_ores)
else
  log("dredgeworks: no ores detected, something has probably gone wrong")
end
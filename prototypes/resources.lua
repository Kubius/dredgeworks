-- Sea resource definitions --------------------------------------------------------

local deep_iron_ore = table.deepcopy(data.raw.resource["iron-ore"])

deep_iron_ore.name = "deep-iron-ore"
deep_iron_ore.autoplace = nil
deep_iron_ore.protected_from_tile_building = false
deep_iron_ore.collision_mask = {'ground-tile','resource-layer','colliding-with-tiles-only'}
deep_iron_ore.water_reflection = nil

for _, adjusticon in pairs(deep_iron_ore.stages) do
  adjusticon.tint = {0.3,0.3,0.3,0.6}
  if(adjusticon.hr_version) then
    adjusticon.hr_version.tint = {0.3,0.3,0.3,0.6}
  end
end

data:extend{deep_iron_ore}

------------------------------------------------------------------------------------

local deep_copper_ore = table.deepcopy(data.raw.resource["copper-ore"])

deep_copper_ore.name = "deep-copper-ore"
deep_copper_ore.autoplace = nil
deep_copper_ore.protected_from_tile_building = false
deep_copper_ore.collision_mask = {'ground-tile','resource-layer','colliding-with-tiles-only'}
deep_copper_ore.water_reflection = nil

for _, adjusticon in pairs(deep_copper_ore.stages) do
  adjusticon.tint = {0.3,0.3,0.3,0.6}
  if(adjusticon.hr_version) then
    adjusticon.hr_version.tint = {0.3,0.3,0.3,0.6}
  end
end

data:extend{deep_copper_ore}

------------------------------------------------------------------------------------

local deep_uranium_ore = table.deepcopy(data.raw.resource["uranium-ore"])

deep_uranium_ore.name = "deep-uranium-ore"
deep_uranium_ore.autoplace = nil
deep_uranium_ore.protected_from_tile_building = false
deep_uranium_ore.collision_mask = {'ground-tile','resource-layer','colliding-with-tiles-only'}
deep_uranium_ore.water_reflection = nil

for _, adjusticon in pairs(deep_uranium_ore.stages) do
  adjusticon.tint = {0.3,0.3,0.3,0.6}
  if(adjusticon.hr_version) then
    adjusticon.hr_version.tint = {0.3,0.3,0.3,0.6}
  end
end

data:extend{deep_uranium_ore}

------------------------------------------------------------------------------------

local deep_stone = table.deepcopy(data.raw.resource["stone"])

deep_stone.name = "deep-stone"
deep_stone.autoplace = nil
deep_stone.protected_from_tile_building = false
deep_stone.collision_mask = {'ground-tile','resource-layer','colliding-with-tiles-only'}
deep_stone.water_reflection = nil

for _, adjusticon in pairs(deep_stone.stages) do
  adjusticon.tint = {0.3,0.3,0.3,0.6}
  if(adjusticon.hr_version) then
    adjusticon.hr_version.tint = {0.3,0.3,0.3,0.6}
  end
end

data:extend{deep_stone}

------------------------------------------------------------------------------------

local deep_coal = table.deepcopy(data.raw.resource["coal"])

deep_coal.name = "deep-coal"
deep_coal.autoplace = nil
deep_coal.protected_from_tile_building = false
deep_coal.collision_mask = {'ground-tile','resource-layer','colliding-with-tiles-only'}
deep_coal.water_reflection = nil

for _, adjusticon in pairs(deep_coal.stages) do
  adjusticon.tint = {0.3,0.3,0.3,0.6}
  if(adjusticon.hr_version) then
    adjusticon.hr_version.tint = {0.3,0.3,0.3,0.6}
  end
end

data:extend{deep_coal}
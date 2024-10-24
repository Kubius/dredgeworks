-- Remove most restrictions on concrete placement

data:extend({{type = "collision-layer", name = "ref_concrete_valid"}})

local valid_concrete_targets = {
    "water", "deepwater", "water-green", "deepwater-green", -- all water
    "water-mud", "water-shallow", -- all shallows
    "wetland-light-green-slime", "wetland-green-slime", "wetland-light-dead-skin", "wetland-dead-skin", "wetland-pink-tentacle", "wetland-red-tentacle", "wetland-yumako", "wetland-jellynut",
    "oil-ocean-shallow" -- shallow oil ocean (deep is a bit too much to stretch to)
    -- no lava or ammonia
}

for _,tile in pairs(data.raw.tile) do 
    local mask = tile.collision_mask.layers
    if mask["ground_tile"] then
        mask["ref_concrete_valid"] = true
    else
        for _,concrete_target in pairs(valid_concrete_targets) do
            if(tile.name == concrete_target) then
                mask["ref_concrete_valid"] = true
            end
        end
    end
end

data.raw.item["refined-concrete"].place_as_tile = {
    result = "refined-concrete",
    condition_size = 1,
    condition = {layers={["ref_concrete_valid"]=true}},
    invert = true
}

data.raw.item["refined-hazard-concrete"].place_as_tile = {
    result = "refined-hazard-concrete-left",
    condition_size = 1,
    condition = {layers={["ref_concrete_valid"]=true}},
    invert = true
}

-- If the resource prevention hasn't been removed by Water Ores, do it ourselves
if not mods["Water_Ores"] then
    local tiles = {"deepwater","deepwater-green","water","water-green","water-mud","water-shallow","landfill"}
    for _,tile in pairs(tiles) do 
        local thistile = data.raw["tile"][tile]
        if thistile then
            local mask = data.raw["tile"][tile].collision_mask.layers
            if mask["resource"] then
                mask["resource"] = nil
            end
        end
    end
end

-- Change unfiltered inserters to not catch fish
if settings.startup["fish_safety"].value then
    for _, inserter in pairs(data.raw.inserter) do
        if not inserter.filter_count then
            inserter.use_easter_egg = false
        end
    end
end

-- If desired, dramatically reduce refined concrete yield to make sea building more expensive
if settings.startup["nerf_concrete"].value > 0 then
    data.raw.recipe["refined-concrete"].results[1].amount = settings.startup["nerf_concrete"].value
end
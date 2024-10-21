-- Remove restrictions on concrete placement
data.raw.item["refined-concrete"].place_as_tile = {
    result = "refined-concrete",
    condition_size = 1,
    condition = {layers = {}}
}

data.raw.item["refined-hazard-concrete"].place_as_tile = {
    result = "refined-hazard-concrete-left",
    condition_size = 1,
    condition = {layers = {}}
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

-- Dramatically reduce refined concrete yield to make sea building more expensive
if settings.startup["nerf_concrete"].value > 0 then
    data.raw.recipe["refined-concrete"].results[1].amount = settings.startup["nerf_concrete"].value
end
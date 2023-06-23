data.raw.item["refined-concrete"].place_as_tile = {
    result = "refined-concrete",
    condition_size = 1,
    condition = {}
}

data.raw.item["refined-hazard-concrete"].place_as_tile = {
    result = "refined-hazard-concrete-left",
    condition_size = 1,
    condition = {}
}

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
    data.raw.recipe["refined-concrete"].result_count = settings.startup["nerf_concrete"].value
end
local collision_mask_util = require("collision-mask-util")

-- Remove most restrictions on concrete placement

data:extend({{type = "collision-layer", name = "ref_concrete_valid"}})

local valid_concrete_targets = {
    "water", "deepwater", "water-green", "deepwater-green", "gleba-deep-lake", -- all water
    "water-mud", "water-shallow", "wetland-blue-slime", -- all shallows
    "wetland-light-green-slime", "wetland-green-slime", "wetland-light-dead-skin", "wetland-dead-skin", "wetland-pink-tentacle", "wetland-red-tentacle", "wetland-yumako", "wetland-jellynut",
    -- "oil-ocean-shallow" -- shallow oil ocean (deep is a bit too much to stretch to)
    -- no lava or ammonia
}

-- Put shallow oil ocean validity at the player's discretion

if settings.startup["shallow_oil_concrete"].value == true then
    table.insert(valid_concrete_targets,"oil-ocean-shallow")
end

--Also set refined concrete as the default fill
local conc_rekerfuffle = settings.startup["refcrete_default_fill"].value

for _,tile in pairs(data.raw.tile) do 
    local mask = tile.collision_mask.layers
    if mask["ground_tile"] and not mask["object"] then
        mask["ref_concrete_valid"] = true
    else
        for _,concrete_target in pairs(valid_concrete_targets) do
            if(tile.name == concrete_target) then
                mask["ref_concrete_valid"] = true
                if conc_rekerfuffle then tile.default_cover_tile = "refined-concrete" end
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

-- Remove main land resource filter, add a filter to manage special conditions for shallow resources we don't submerge
data:extend({{type = "collision-layer", name = "shallow_resource"}})
local tiles = {"deepwater","deepwater-green","water","water-green","water-mud","water-shallow","landfill","gleba-deep-lake","wetland-blue-slime"}
for _,tile in pairs(tiles) do 
    local thistile = data.raw["tile"][tile]
    if thistile then
        local mask = data.raw["tile"][tile].collision_mask.layers
        if mask["resource"] then
            mask["resource"] = nil
            mask["shallow_resource"] = true
        end
    end
end

-- If we have Cargo Ships, we have offshore oil; remove the land deposits from water accordingly
if mods["cargo-ships"] then
    local crude_mask = collision_mask_util.get_mask(data.raw.resource["crude-oil"])
    crude_mask.layers["shallow_resource"] = true
    data.raw.resource["crude-oil"].collision_mask = crude_mask
end

--Increase concrete placement cost to slightly counterbalance lower material imposition
if settings.startup["concrete_placement_cost"].value > 0 then
    local conc_cost = settings.startup["concrete_placement_cost"].value
    data.raw.tile["refined-concrete"].placeable_by = {item = "refined-concrete", count = conc_cost}
    data.raw.tile["refined-hazard-concrete-left"].placeable_by = {item = "refined-hazard-concrete", count = conc_cost}
    data.raw.tile["refined-hazard-concrete-right"].placeable_by = {item = "refined-hazard-concrete", count = conc_cost}
    data.raw.tile["refined-concrete"].minable.count = conc_cost
    data.raw.tile["refined-hazard-concrete-left"].minable.count = conc_cost
    data.raw.tile["refined-hazard-concrete-right"].minable.count = conc_cost
end
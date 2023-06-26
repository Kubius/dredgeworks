function submergeOre(e)
    local surface = e.surface
    local area = e.area
  
    local ore_deposits = surface.find_entities_filtered{area = area, type = "resource"}
    local num_deposits = (ore_deposits and #ore_deposits) or 0

    if num_deposits > 0 then
        for _, deposit in pairs(ore_deposits) do
            if (surface.count_tiles_filtered{position=deposit.position, radius=deposit.get_radius(), collision_mask="ground-tile"} == 0 ) then
                local try_deep = "deep-" .. deposit.name
                if(deposit.prototype.mineable_properties) then
                    if(game.entity_prototypes[try_deep]) then
                        local oldpos = deposit.position
                        local oldamt = deposit.amount
                        local checkrad = deposit.get_radius() + 1 --clean edges
                        deposit.destroy()
                        if (surface.count_tiles_filtered{position=oldpos, radius=checkrad, collision_mask="ground-tile"} == 0 ) then
                            surface.create_entity{name=try_deep, amount=oldamt, position=oldpos}
                        end
                    elseif((not allow_floating_edgecase) and deposit.prototype.mineable_properties.products[1].type ~= "fluid") then
                        deposit.destroy()
                    end
                else
                    deposit.destroy()
                end
            end
        end
    end
end
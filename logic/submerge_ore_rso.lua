function submergeOreRSO(e)
    if string.find(e.entity.name, "deep-") then return end
    local deposit = e.entity
    local surface = deposit.surface

    if (surface.count_tiles_filtered{position=deposit.position, radius=deposit.get_radius(), collision_mask="water_tile"} >= 1 ) then
        local try_deep = "deep-" .. deposit.name
        if(deposit.prototype.mineable_properties) then
            local mineprop = deposit.prototype.mineable_properties.products
            if(prototypes.entity[try_deep]) then
                local oldpos = deposit.position
                local oldamt = deposit.amount
                local checkrad = deposit.get_radius() + 1 --clean edges
                deposit.destroy()
                if (surface.count_tiles_filtered{position=oldpos, radius=checkrad, collision_mask="ground_tile"} == 0 ) then
                    surface.create_entity{name=try_deep, amount=oldamt, position=oldpos}
                end
            elseif((not allow_floating_edgecase) and (not mineprop or mineprop[1].type ~= "fluid")) then
                deposit.destroy()
            end
        else
            deposit.destroy()
        end
    end
end
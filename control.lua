require("util")
require("__dredgeworks__/logic/submerge_ore")
require("__dredgeworks__/logic/submerge_ore_rso")

script.on_init(function()
    init_events()
    end)

function init_events()
    log("dredgeworks: preparing ore submersion")
    if script.active_mods["rso-mod"] then
        log("dredgeworks: RSO module activated")
        script.on_event(defines.events.script_raised_built, submergeOreRSO, {{filter = "type", type = "resource"}})
    end
    script.on_event(defines.events.on_chunk_generated, submergeOre)
end

script.on_load(function()
    init_events()
    end)
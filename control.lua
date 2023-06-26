require("util")
require("__dredgeworks__/logic/submerge_ore")

script.on_init(function()
    init_events()
    end)

function init_events()
    log("dredgeworks: preparing ore submersion")
    script.on_event(defines.events.on_chunk_generated, submergeOre)
end

script.on_load(function()
    init_events()
    end)
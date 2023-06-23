require("util")
require("__dredgeworks__/logic/submerge_ore")

local function init()
    init_events()
end

function init_events()
    script.on_event(defines.events.on_chunk_generated, submergeOre)
end

---- Register Default Events ----
-- init
script.on_load(function()
    log("dredgeworks on_load")
    init_events()
    end)
  script.on_init(function()
    log("dredgeworks on_init")
    init()
    end)
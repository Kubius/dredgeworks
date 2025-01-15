DREDGEPATH = "__dredgeworks-graphics__/graphics/"
emptypic = { filename = DREDGEPATH .. "blank.png", size = 1, direction_count = 1, variation_count = 1 }
floating_inserter_index = {}
floating_belt_index = {}

--Mod compatibility: add the name string of a resource to this list to skip it in submerged ore generation
--Ores may still appear to generate over water in the map preview, but this will not be the case in actual play
do_not_submerge = {}
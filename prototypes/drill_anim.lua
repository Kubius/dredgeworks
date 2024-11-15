-- Contents adapted from Kirazy's Semi-Classic Mining Drill port under MIT license
--
-- License preserved in MIT_LICENSE in project directory.

-- Mining Drill Constants and Functions

local electric_drill_animation_speed = 0.4
local electric_drill_animation_sequence = {
    1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1,
}

local electric_drill_animation_shadow_sequence = {
    1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1,
}

--- Gets the mining drill smoke animation.
--- @return data.Animation
local function electric_mining_drill_smoke()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-smoke.png",
        line_length = 6,
        width = 48,
        height = 72,
        frame_count = 30,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, 3),
        scale = 0.5,
    }

    return animation
end

--- Gets the mining drill smoke front animation.
--- @return data.Animation
local function electric_mining_drill_smoke_front()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-smoke-front.png",
        line_length = 6,
        width = 148,
        height = 132,
        frame_count = 30,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-3, 9),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill animation.
--- @return data.Animation
local function electric_mining_drill_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill.png",
        line_length = 6,
        width = 194,
        height = 154,
        frame_count = 30,
        animation_speed = electric_drill_animation_speed,
        frame_sequence = electric_drill_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(0, -21),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill shadow animation.
--- @return data.Animation
local function electric_mining_drill_shadow_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-shadow.png",
        line_length = 7,
        width = 232,
        height = 50,
        frame_count = 21,
        animation_speed = electric_drill_animation_speed,
        frame_sequence = electric_drill_animation_shadow_sequence,
        draw_as_shadow = true,
        shift = util.by_pixel(49, 7),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill horizontal animation.
--- @return data.Animation
local function electric_mining_drill_horizontal_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-horizontal.png",
        line_length = 6,
        width = 104,
        height = 178,
        frame_count = 30,
        animation_speed = electric_drill_animation_speed,
        frame_sequence = electric_drill_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(-3, -27),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill front animation.
--- @return data.Animation
local function electric_mining_drill_horizontal_front_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-horizontal-front.png",
        line_length = 6,
        width = 54,
        height = 136,
        frame_count = 30,
        animation_speed = electric_drill_animation_speed,
        frame_sequence = electric_drill_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(14, -23),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill shadow animation.
--- @return data.Animation
local function electric_mining_drill_horizontal_shadow_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-horizontal-shadow.png",
        line_length = 7,
        width = 236,
        height = 138,
        frame_count = 21,
        animation_speed = electric_drill_animation_speed,
        frame_sequence = electric_drill_animation_shadow_sequence,
        draw_as_shadow = true,
        shift = util.by_pixel(48, 5),
        scale = 0.5,
    }

    return animation
end

--- Gets the status colors for the LED status indicator lights.
--- @return data.StatusColors
local function electric_mining_drill_status_colors()
    --- @type data.StatusColors
    local status_colors = {
        -- If no_power, idle, no_minable_resources, disabled, insufficient_input or full_output is
        -- used, always_draw of corresponding layer must be set to true to draw it in those states.

        -- If no_power is not specified or is nil, it defaults to clear color {0,0,0,0}
        no_power = { 0, 0, 0, 0 },

        -- If idle is not specified or is nil, it defaults to white.
        idle = { 1, 0, 0, 1 },

        -- If no_minable_resources, disabled, insufficient_input or full_output are not specified or
        -- are nil, they default to idle color.
        no_minable_resources = { 1, 0, 0, 1 },
        insufficient_input = { 1, 1, 0, 1 },
        full_output = { 1, 1, 0, 1 },
        disabled = { 1, 1, 0, 1 },

        -- If working is not specified or is nil, it defaults to white.
        working = { 0, 1, 0, 1 },
        -- If low_power is not specified or is nil, it defaults to working color.
        low_power = { 1, 1, 0, 1 },
    }

    return status_colors
end

--- Gets the working visualisation for the LED status lights.
--- @return data.WorkingVisualisation
local function electric_mining_drill_status_leds_working_visualisation()
    local led_blend_mode = nil -- "additive"
    local led_tint = { 1, 1, 1, 0.5 }

    --- @type data.WorkingVisualisation
    local working_visualisation = {
        apply_tint = "status",
        always_draw = true,
        draw_as_sprite = true,
        north_animation = {
            filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-light.png",
            width = 30,
            height = 32,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(26, -69),
            scale = 0.5,
        },
        east_animation = {
            filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-light.png",
            width = 32,
            height = 34,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(41, -45),
            scale = 0.5,
        },
        south_animation = {
            filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-light.png",
            width = 32,
            height = 30,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(26, 10),
            scale = 0.5,
        },
        west_animation = {
            filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-light.png",
            width = 32,
            height = 34,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(-42, -45),
            scale = 0.5,
        },
    }

    return working_visualisation
end

--- Adds the cardinal direction offsets to the given `working_visualisation` representing the status
--- light.
--- @param working_visualisation data.WorkingVisualisation -@return data.WorkingVisualisation
local function electric_mining_drill_add_light_offsets(working_visualisation)
    working_visualisation.north_position = {  1.0 - 11 / 64, -2.0 - 10 / 64 }
    working_visualisation.east_position =  {  1.5 - 13 / 64, -1.5 +  8 / 64 }
    working_visualisation.south_position = {  1.0 - 10 / 64,  0.5 - 12 / 64 }
    working_visualisation.west_position =  { -1.5 + 13 / 64, -1.5 +  7 / 64 }

    return working_visualisation
end

local electric_mining_drill_primary_light = electric_mining_drill_add_light_offsets({
    light = { intensity = 1, size = 3, color = { r = 1, g = 1, b = 1 }, minimum_darkness = 0.1 },
})

local electric_mining_drill_secondary_light = electric_mining_drill_add_light_offsets({
    always_draw = true,
    apply_tint = "status",
    light = { intensity = 0.8, size = 1.5, color = { r = 1, g = 1, b = 1 }, minimum_darkness = 0.1 },
})

--- @type data.CircuitConnectorDefinition[]
local circuit_connectors = circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 4, main_offset = util.by_pixel(-42, -62), shadow_offset = util.by_pixel(0, -34), show_shadow = false },
    { variation = 2, main_offset = util.by_pixel(36, -1),   shadow_offset = util.by_pixel(70, 35), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(-31, 4),   shadow_offset = util.by_pixel(0, 34),  show_shadow = false },
    { variation = 6, main_offset = util.by_pixel(-32, 5),   shadow_offset = util.by_pixel(0, 35),  show_shadow = false },
})

-- Remnants
local seafloor_drill_remnants = table.deepcopy(data.raw["corpse"]["electric-mining-drill-remnants"])
seafloor_drill_remnants.name = "seafloor-drill-remnants"
seafloor_drill_remnants.animation = make_rotated_animation_variations_from_sheet(4, {
    filename = DREDGEPATH .. "entity/seafloor_drill/remnants/electric-mining-drill-remnants.png",
    line_length = 1,
    width = 356,
    height = 328,
    frame_count = 1,
    variation_count = 1,
    axially_symmetrical = false,
    direction_count = 1,
    shift = util.by_pixel(7, -0.5),
    scale = 0.5,
})

-- Explosion
local seafloor_drill_explosion = table.deepcopy(data.raw["explosion"]["electric-mining-drill-explosion"])
seafloor_drill_explosion.name = "seafloor-drill-explosion"
seafloor_drill_explosion.height = 0
seafloor_drill_explosion.animations = {
    {
        filename = "__base__/graphics/entity/small-explosion/small-explosion-1.png",
        priority = "high",
        line_length = 6,
        width = 88,
        height = 178,
        frame_count = 24,
        animation_speed = 0.5,
        shift = util.by_pixel(-1, -24),
        scale = 0.5,
    },
    {
        filename = "__base__/graphics/entity/small-explosion/small-explosion-2.png",
        priority = "high",
        line_length = 6,
        width = 92,
        height = 152,
        frame_count = 24,
        animation_speed = 0.5,
        shift = util.by_pixel(2, -7.5),
        scale = 0.5,
    },
}

seafloor_drill_explosion.light = {
    intensity = 1,
    size = 20,
    color = { r = 1.0, g = 1.0, b = 1.0 },
}

seafloor_drill_explosion.smoke = "smoke-fast"
seafloor_drill_explosion.smoke_count = 2
seafloor_drill_explosion.smoke_slow_down_factor = 1
seafloor_drill_explosion.sound = {
    aggregation = {
        max_count = 1,
        remove = true,
    },
    audible_distance_modifier = 0.7,
    variations = {
        {
            filename = "__base__/sound/fight/medium-explosion-1.ogg",
            volume = 0.4,
        },
        {
            filename = "__base__/sound/fight/medium-explosion-2.ogg",
            volume = 0.4,
        },
        {
            filename = "__base__/sound/fight/medium-explosion-3.ogg",
            volume = 0.4,
        },
        {
            filename = "__base__/sound/fight/medium-explosion-4.ogg",
            volume = 0.4,
        },
        {
            filename = "__base__/sound/fight/medium-explosion-5.ogg",
            volume = 0.4,
        },
    },
}

seafloor_drill_explosion.created_effect = {
    type = "direct",
    action_delivery = {
        type = "instant",
        target_effects = {
            {
                type = "create-particle",
                repeat_count = 9,
                particle_name = "offshore-pump-metal-particle-big",
                offset_deviation = { { -0.6875, -0.6875 }, { 0.6875, 0.6875 } },
                initial_height = 0.1,
                initial_height_deviation = 0.49,
                initial_vertical_speed = 0.074,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05,
            },
            {
                type = "create-particle",
                repeat_count = 14,
                particle_name = "offshore-pump-metal-particle-medium",
                offset_deviation = { { -0.582, -0.8945 }, { 0.582, 0.8945 } },
                initial_height = 0.2,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.091,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05,
            },
            {
                type = "create-particle",
                repeat_count = 21,
                particle_name = "offshore-pump-metal-particle-small",
                offset_deviation = { { -0.8945, -0.8906 }, { 0.8945, 0.8906 } },
                initial_height = 0.1,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.066,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05,
            },
            {
                type = "create-particle",
                repeat_count = 23,
                particle_name = "offshore-pump-glass-particle-small",
                offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
                initial_height = 0.3,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.092,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.05,
                speed_from_center_deviation = 0.05,
            },
            {
                type = "create-particle",
                repeat_count = 14,
                particle_name = "offshore-pump-mechanical-component-particle-medium",
                offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
                initial_height = 0.4,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.061,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05,
            },
        },
    },
}

data:extend({seafloor_drill_remnants,seafloor_drill_explosion})

-- Entity
local seafloor_drill = data.raw["mining-drill"]["seafloor-drill"]

seafloor_drill.corpse = "seafloor-drill-remnants"
seafloor_drill.dying_explosion = "seafloor-drill-explosion"

seafloor_drill.graphics_set =
{
    drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
    animation_progress = 1,
    min_animation_progress = 0,
    max_animation_progress = 30,

    status_colors = electric_mining_drill_status_colors(),

    circuit_connector_layer = "object",
    circuit_connector_secondary_draw_order = { north = 14, east = 26, south = 26, west = 26 },

    animation = {
        north = {
            layers = {
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N.png",
                    line_length = 1,
                    width = 194,
                    height = 242,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -12),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-output.png",
                    line_length = 5,
                    width = 72,
                    height = 66,
                    frame_count = 5,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-1, -44),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-shadow.png",
                    line_length = 1,
                    width = 274,
                    height = 206,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, -3),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        east = {
            layers = {
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(30, -11),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 170,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(20, 6),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        south = {
            layers = {
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S.png",
                    line_length = 1,
                    width = 194,
                    height = 240,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -7),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-shadow.png",
                    line_length = 1,
                    width = 274,
                    height = 204,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, 2),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        west = {
            layers = {
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-31, -12),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-shadow.png",
                    line_length = 1,
                    width = 282,
                    height = 170,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(15, 6),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
    },

    shift_animation_waypoints = {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.7 - 0.6
        north = { { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.25 }, { 0, -0.5 }, { 0, -0.2 }, { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.6 }, { 0, 0.3 }, { 0, -0.1 }, { 0, -0.4 }, { 0, 0 }, { 0, 0.3 } },
        -- Bounds -0.6 - 0.4
        east = { { 0, 0 }, { 0.4, 0 }, { 0.1, 0 }, { -0.3, 0 }, { -0.6, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 }, { 0, 0 }, { -0.35, 0 }, { -0.6, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 } },
        -- Bounds -0.7 - 0.5
        south = { { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.5 }, { 0, 0.3 }, { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.2 }, { 0, -0.6 }, { 0, -0.3 }, { 0, 0.1 }, { 0, 0.4 }, { 0, 0 }, { 0, -0.3 } },
        -- Bounds -0.4 - 0.6
        west = { { 0, 0 }, { -0.4, 0 }, { -0.1, 0 }, { 0.3, 0 }, { 0.6, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 }, { 0, 0 }, { 0.35, 0 }, { 0.6, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 } },
    },

    shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
    shift_animation_transition_duration = 30 / electric_drill_animation_speed,

    working_visualisations = {
        -- dust animation 1
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "resource-color",
            animation = electric_mining_drill_smoke(),
            north_position = { 0, 0.25 },
            east_position = { 0, 0 },
            south_position = { 0, 0.25 },
            west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 58,
                        frame_count = 10,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(1, -44),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = nil,
            west_animation = nil,
        },

        -- drill back animation
        {
            animated_shift = true,
            always_draw = true,
            north_animation = {
                layers = {
                    electric_mining_drill_animation(),
                    electric_mining_drill_shadow_animation(),
                },
            },
            east_animation = {
                layers = {
                    electric_mining_drill_horizontal_animation(),
                    electric_mining_drill_horizontal_shadow_animation(),
                },
            },
            south_animation = {
                layers = {
                    electric_mining_drill_animation(),
                    electric_mining_drill_shadow_animation(),
                },
            },
            west_animation = {
                layers = {
                    electric_mining_drill_horizontal_animation(),
                    electric_mining_drill_horizontal_shadow_animation(),
                },
            },
        },

        -- dust animation 2
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "none",
            animation = electric_mining_drill_smoke_front(),
            north_position = { 0, 0.25 },
            east_position = { 0, 0 },
            south_position = { 0, 0.25 },
            west_position = { 0, 0 },
        },

        -- dust animation directional 2
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-smoke.png",
                        line_length = 5,
                        width = 52,
                        height = 56,
                        frame_count = 10,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(25, -12),
                        scale = 0.5,
                    },
                },
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-smoke.png",
                        line_length = 5,
                        width = 48,
                        height = 36,
                        frame_count = 10,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 20),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 54,
                        frame_count = 10,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-25, -11),
                        scale = 0.5,
                    },
                },
            },
        },

        -- front frame
        {
            always_draw = true,
            north_animation = nil,
            east_animation = {
                priority = "high",
                filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-front.png",
                line_length = 1,
                width = 208,
                height = 186,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(3, 2),
                scale = 0.5,
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-output.png",
                        line_length = 5,
                        width = 82,
                        height = 56,
                        frame_count = 5,
                        animation_speed = electric_drill_animation_speed,
                        shift = util.by_pixel(-1, 34),
                        scale = 0.5,
                    },
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-front.png",
                        line_length = 1,
                        width = 172,
                        height = 42,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        repeat_count = 5,
                        shift = util.by_pixel(0, 13),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                priority = "high",
                filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-front.png",
                line_length = 1,
                width = 210,
                height = 190,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 1),
                scale = 0.5,
            },
        },

        -- drill front animation
        {
            animated_shift = true,
            always_draw = true,
            --north_animation = util.empty_sprite(),
            east_animation = electric_mining_drill_horizontal_front_animation(),
            --south_animation = util.empty_sprite(),
            west_animation = electric_mining_drill_horizontal_front_animation(),
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        electric_mining_drill_primary_light,
        electric_mining_drill_secondary_light,
    },
}

seafloor_drill.wet_mining_graphics_set =
{
    drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
    animation_progress = 1,
    min_animation_progress = 0,
    max_animation_progress = 30,

    status_colors = electric_mining_drill_status_colors(),

    circuit_connector_layer = "object",
    circuit_connector_secondary_draw_order = { north = 14, east = 44, south = 44, west = 44 },

    animation = {
        north = {
            layers = {
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 242,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -12),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-output.png",
                    line_length = 5,
                    width = 72,
                    height = 66,
                    frame_count = 5,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-1, -44),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-wet-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 222,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, 1),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        west = {
            layers = {
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-31, -12),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-wet-shadow.png",
                    line_length = 1,
                    width = 284,
                    height = 194,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(15, 8),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        south = {
            layers = {
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 240,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -7),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-wet-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 204,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, 2),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        east = {
            layers = {
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = electric_drill_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(30, -11),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-wet-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 194,
                    frame_count = 1,
                    animation_speed = electric_drill_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(20, 8),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
    },

    shift_animation_waypoints = {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.5 - 0.6
        north = { { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.25 }, { 0, -0.5 }, { 0, -0.2 }, { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.6 }, { 0, 0.3 }, { 0, -0.1 }, { 0, -0.4 }, { 0, 0 }, { 0, 0.3 } },
        -- Bounds -0.4 - 0.4
        east = { { 0, 0 }, { 0.4, 0 }, { 0, 0 }, { -0.25, 0 }, { -0.4, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 }, { 0, 0 }, { -0.35, 0 }, { -0.1, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 } },
        -- Bounds -0.7 - 0.5
        south = { { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.5 }, { 0, 0.3 }, { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.2 }, { 0, -0.6 }, { 0, -0.3 }, { 0, 0.1 }, { 0, 0.4 }, { 0, 0 }, { 0, -0.3 } },
        -- Bounds -0.4 - 0.4
        west = { { 0, 0 }, { -0.4, 0 }, { -0, 0 }, { 0.25, 0 }, { 0.4, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 }, { 0, 0 }, { 0.35, 0 }, { 0.1, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 } },
    },

    shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
    shift_animation_transition_duration = 30 / electric_drill_animation_speed,

    working_visualisations = {
        -- dust animation 1
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "none",
            animation = electric_mining_drill_smoke(),
            north_position = { 0, 0.25 },
            east_position = { 0, 0 },
            south_position = { 0, 0.25 },
            west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 58,
                        frame_count = 10,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(1, -44),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = nil,
            west_animation = nil,
        },

        -- drill back animation
        {
            animated_shift = true,
            always_draw = true,
            north_animation = {
                layers = {
                    electric_mining_drill_animation(),
                    electric_mining_drill_shadow_animation(),
                },
            },
            east_animation = {
                layers = {
                    electric_mining_drill_horizontal_animation(),
                    electric_mining_drill_horizontal_shadow_animation(),
                },
            },
            south_animation = {
                layers = {
                    electric_mining_drill_animation(),
                    electric_mining_drill_shadow_animation(),
                },
            },
            west_animation = {
                layers = {
                    electric_mining_drill_horizontal_animation(),
                    electric_mining_drill_horizontal_shadow_animation(),
                },
            },
        },

        -- dust animation 2
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "none",
            animation = electric_mining_drill_smoke_front(),
        },

        -- dust animation directional 2
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-smoke.png",
                        line_length = 5,
                        width = 52,
                        height = 56,
                        frame_count = 10,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(25, -12),
                        scale = 0.5,
                    },
                },
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-smoke.png",
                        line_length = 5,
                        width = 48,
                        height = 36,
                        frame_count = 10,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 20),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 54,
                        frame_count = 10,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-25, -11),
                        scale = 0.5,
                    },
                },
            },
        },

        -- fluid window background (bottom)
        {
            -- render_layer = "lower-object-above-shadow",
            secondary_draw_order = -49,
            always_draw = true,
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-wet-window-background-front.png",
                        line_length = 1,
                        width = 132,
                        height = 28,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-1, -18),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-wet-window-background.png",
                        line_length = 1,
                        width = 132,
                        height = 88,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-1, -33),
                        scale = 0.5,
                    },
                },
            },
            west_animation = nil,
        },

        -- fluid window background (front)
        {
            always_draw = true,
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-wet-window-background.png",
                        line_length = 1,
                        width = 30,
                        height = 20,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(1, 21),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-wet-window-background-front.png",
                        line_length = 1,
                        width = 88,
                        height = 86,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(11, 0),
                        scale = 0.5,
                    },
                },
            },
            south_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-wet-window-background-front.png",
                        line_length = 1,
                        width = 86,
                        height = 86,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-12, 0),
                        scale = 0.5,
                    },
                },
            },
        },
        -- fluid base (bottom)
        {
            always_draw = true,
            -- render_layer = "lower-object-above-shadow",
            secondary_draw_order = -48,
            apply_tint = "input-fluid-base-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-wet-fluid-background-front.png",
                        line_length = 1,
                        width = 130,
                        height = 36,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(0, -17),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-wet-fluid-background.png",
                        line_length = 1,
                        width = 130,
                        height = 96,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(0, -32),
                        scale = 0.5,
                    },
                },
            },
            west_animation = nil,
        },

        -- fluid base (front)
        {
            always_draw = true,
            apply_tint = "input-fluid-base-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-wet-fluid-background.png",
                        line_length = 1,
                        width = 28,
                        height = 22,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(2, 21),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-wet-fluid-background-front.png",
                        line_length = 1,
                        width = 82,
                        height = 88,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(12, -1),
                        scale = 0.5,
                    },
                },
            },
            south_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-wet-fluid-background-front.png",
                        line_length = 1,
                        width = 82,
                        height = 88,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-12, -1),
                        scale = 0.5,
                    },
                },
            },
        },

        -- fluid flow (bottom)
        {
            --render_layer = "lower-object-above-shadow",
            secondary_draw_order = -47,
            always_draw = true,
            apply_tint = "input-fluid-flow-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-wet-fluid-flow-front.png",
                        line_length = 1,
                        width = 130,
                        height = 28,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, -17),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-wet-fluid-flow.png",
                        line_length = 1,
                        width = 130,
                        height = 88,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, -32),
                        scale = 0.5,
                    },
                },
            },
            west_animation = nil,
        },

        -- fluid flow (front)
        {
            always_draw = true,
            apply_tint = "input-fluid-flow-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-wet-fluid-flow.png",
                        line_length = 1,
                        width = 26,
                        height = 20,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(2, 22),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-wet-fluid-flow-front.png",
                        line_length = 1,
                        width = 84,
                        height = 86,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(11, 0),
                        scale = 0.5,
                    },
                },
            },
            south_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-wet-fluid-flow-front.png",
                        line_length = 1,
                        width = 82,
                        height = 86,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-12, 0),
                        scale = 0.5,
                    },
                },
            },
        },

        -- front frame (wet)
        {
            always_draw = true,
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-wet-front.png",
                        line_length = 1,
                        width = 162,
                        height = 124,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 20),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-wet-front.png",
                        line_length = 1,
                        width = 210,
                        height = 190,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-4, 1),
                        scale = 0.5,
                    },
                },
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-output.png",
                        line_length = 5,
                        width = 82,
                        height = 56,
                        frame_count = 5,
                        animation_speed = electric_drill_animation_speed,
                        shift = util.by_pixel(-1, 34),
                        scale = 0.5,
                    },
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-wet-front.png",
                        line_length = 1,
                        width = 192,
                        height = 70,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        repeat_count = 5,
                        shift = util.by_pixel(0, 19),
                        scale = 0.5,
                    },
                },
            },
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-wet-front.png",
                        line_length = 1,
                        width = 208,
                        height = 186,
                        frame_count = 1,
                        animation_speed = electric_drill_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(3, 2),
                        scale = 0.5,
                    },
                },
            },
        },

        -- drill front animation
        {
            animated_shift = true,
            always_draw = true,
            --north_animation = util.empty_sprite(),
            east_animation = electric_mining_drill_horizontal_front_animation(),
            --south_animation = util.empty_sprite(),
            west_animation = electric_mining_drill_horizontal_front_animation(),
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        electric_mining_drill_primary_light,
        electric_mining_drill_secondary_light,
    },
}

seafloor_drill.circuit_connector = circuit_connectors

seafloor_drill.radius_visualisation_picture = {
    filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-radius-visualization.png",
    width = 10,
    height = 10,
}

seafloor_drill.integration_patch = {
    north = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-N-integration.png",
        line_length = 1,
        width = 230,
        height = 236,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        scale = 0.5,
    },
    east = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-E-integration.png",
        line_length = 1,
        width = 238,
        height = 204,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(2, 5),
        repeat_count = 5,
        scale = 0.5,
    },
    south = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-S-integration.png",
        line_length = 1,
        width = 224,
        height = 228,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        scale = 0.5,
    },
    west = {
        priority = "high",
        filename = DREDGEPATH .. "entity/seafloor_drill/electric-mining-drill-W-integration.png",
        line_length = 1,
        width = 234,
        height = 202,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-3, 5),
        repeat_count = 5,
        scale = 0.5,
    },
}

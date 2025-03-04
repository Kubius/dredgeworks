data:extend{
    {
        type = "bool-setting",
        name = "refcrete_default_fill",
        setting_type = "startup",
        default_value = true,
        order = "c-a"
    },
    {
        type = "bool-setting",
        name = "seafloor_drill_beltstack",
        setting_type = "startup",
        default_value = false,
        order = "c-b"
    },
    {
        type = "int-setting",
        name = "concrete_placement_cost",
        setting_type = "startup",
        default_value = 3,
        minimum_value = 0,
        maximum_value = 10,
        order = "c-c"
    },
    {
        type = "bool-setting",
        name = "shallow_oil_concrete",
        setting_type = "startup",
        default_value = false,
        order = "c-d"
    },
    {
        type = "bool-setting",
        name = "allow_floating_edgecase",
        setting_type = "startup",
        default_value = false,
        order = "c-e"
    },
    {
        type = "bool-setting",
        name = "limit_belt_flotation",
        setting_type = "startup",
        default_value = false,
        order = "c-f"
    },
    {
        type = "bool-setting",
        name = "limit_inserter_flotation",
        setting_type = "startup",
        default_value = false,
        order = "c-g"
    },
}
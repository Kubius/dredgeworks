data:extend{
    {
        type = "bool-setting",
        name = "fish_safety",
        setting_type = "startup",
        default_value = true,
        order = "c-a"
    },
    {
        type = "int-setting",
        name = "nerf_concrete",
        setting_type = "startup",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 10,
        order = "c-b"
    },
    {
        type = "bool-setting",
        name = "allow_floating_edgecase",
        setting_type = "startup",
        default_value = false,
        order = "c-c"
    },
    {
        type = "bool-setting",
        name = "no_inserter_flotation",
        setting_type = "startup",
        default_value = false,
        order = "c-d"
    },
}
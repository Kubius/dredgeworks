data:extend{
    {
        type = "item",
        name = "wire-buoy",
        icon = DREDGEPATH .. "icons/wirebuoy.png",
        icon_size = 64, icon_mipmaps = 3,
        flags = {},
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-c[substation]-a[wire-buoy]",
        place_result = "wire-buoy",
        stack_size = 50
    },
    {
        type = "item",
        name = "light-buoy",
        icon = DREDGEPATH .. "icons/lightbuoy.png",
        icon_size = 64,
        flags = {},
        subgroup = "circuit-network",
        order = "a[light]-b[light-buoy]",
        place_result = "light-buoy",
        stack_size = 50
    },
    {
        type = "item",
        name = "seafloor-drill",
        icon = DREDGEPATH .. "icons/seafloor-drill.png",
        icon_size = 64,
        flags = {},
        subgroup = "extraction-machine",
        order = "b[seafloor-drill]-a[offshore-pump]",
        place_result = "seafloor-drill",
        stack_size = 50
     },
     {
        type = "item",
        name = "floating-belt",
        icon = DREDGEPATH .. "icons/floating-belt.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {},
        subgroup = "belt",
        order = "b[floating-belt]-a[underground-belt]",
        place_result = "floating-belt",
        stack_size = 100
     },
     {
        type = "item",
        name = "flotation-platform",
        icon = DREDGEPATH .. "icons/flotation-platform.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "e[flotation-platform]",
        stack_size = 50
      },
}
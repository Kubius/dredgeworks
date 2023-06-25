for _, inserter_entry in pairs(floating_inserter_index) do
  data:extend{
    {
      type = "recipe",
      name = inserter_entry[1],
      localised_name = inserter_entry[2],
      enabled = false,
      energy_required = 0.5,
      ingredients = {
        {inserter_entry[3], 1},
        {"flotation-platform", 1}
      },
      result = inserter_entry[1],
      result_count = 1
    }
  }
end

data:extend{
  {
    type = "recipe",
    name = "wire-buoy",
    enabled = false,
    energy_required = 1,
    ingredients = {
      {"copper-cable", 6},
      {"pipe", 2},
      {"steel-plate", 3}
    },
    result = "wire-buoy",
    result_count = 1
  },
  {
    type = "recipe",
    name = "flotation-platform",
    enabled = false,
    energy_required = 1,
    ingredients = {
      {"plastic-bar", 1},
      {"iron-stick", 2},
      {"iron-plate", 2}
    },
    result = "flotation-platform",
    result_count = 2
  },
  {
    type = "recipe",
    name = "flotation-platform-wood",
    icon = DREDGEPATH .. "icons/flotation-platform-wood.png",
    icon_size = 64,
    enabled = false,
    energy_required = 0.8,
    allow_decomposition = false,
    ingredients = {
      {"wood", 2},
      {"iron-stick", 1},
      {"iron-plate", 1}
    },
    result = "flotation-platform",
    result_count = 1
  },
  {
    type = "recipe",
    name = "seafloor-drill",
    enabled = false,
    energy_required = 4,
    ingredients = {
      {"flotation-platform", 4},
      {"electric-mining-drill", 1}
    },
    result = "seafloor-drill",
    result_count = 1
  },
  {
    type = "recipe",
    name = "floating-belt",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      {"flotation-platform", 1},
      {"transport-belt", 2}
    },
    result = "floating-belt",
    result_count = 2
  },
}
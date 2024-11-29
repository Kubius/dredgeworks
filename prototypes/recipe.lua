if (settings.startup["no_inserter_flotation"].value == false) then
  for _, inserter_entry in pairs(floating_inserter_index) do
    if (mods["boblogistics"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true) then --manual bob compat
      if(inserter_entry[1] == "floating-red-inserter") then
        data:extend{
          {
            type = "recipe",
            name = inserter_entry[1],
            localised_name = inserter_entry[2],
            enabled = false,
            energy_required = 0.5,
            ingredients = {
              {type = "item", name = "long-handed-inserter", amount = 1},
              {type = "item", name = "flotation-platform", amount = 1}
            },
            results = {{type = "item", name = inserter_entry[1], amount = 1}}
          }
        }
      elseif(inserter_entry[1] ~= "floating-long-handed-inserter") then
        data:extend{
          {
            type = "recipe",
            name = inserter_entry[1],
            localised_name = inserter_entry[2],
            enabled = false,
            energy_required = 0.5,
            ingredients = {
              {type = "item", name = inserter_entry[3], amount = 1},
              {type = "item", name = "flotation-platform", amount = 1}
            },
            results = {{type = "item", name = inserter_entry[1], amount = 1}}
          }
        }
      end
    else
      data:extend{
        {
          type = "recipe",
          name = inserter_entry[1],
          localised_name = inserter_entry[2],
          enabled = false,
          energy_required = 0.5,
          ingredients = {
            {type = "item", name = inserter_entry[3], amount = 1},
            {type = "item", name = "flotation-platform", amount = 1}
          },
          results = {{type = "item", name = inserter_entry[1], amount = 1}}
        }
      }
    end
  end
end

data:extend{
  {
    type = "recipe",
    name = "wire-buoy",
    enabled = false,
    energy_required = 1,
    ingredients = {
      {type = "item", name = "copper-cable", amount = 6},
      {type = "item", name = "pipe", amount = 2},
      {type = "item", name = "steel-plate", amount = 3}
    },
    results = {{type = "item", name = "wire-buoy", amount = 1}}
  },
  {
    type = "recipe",
    name = "light-buoy",
    enabled = true,
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "small-lamp", amount = 1},
      {type = "item", name = "pipe", amount = 2}
    },
    results = {{type = "item", name = "light-buoy", amount = 1}}
  },
  {
    type = "recipe",
    name = "flotation-platform",
    enabled = false,
    energy_required = 0.8,
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 1},
      {type = "item", name = "iron-stick", amount = 2},
      {type = "item", name = "iron-plate", amount = 2}
    },
    results = {{type = "item", name = "flotation-platform", amount = 2}}
  },
  {
    type = "recipe",
    name = "flotation-platform-wood",
    icon = DREDGEPATH .. "icons/flotation-platform-wood.png",
    icon_size = 64,
    enabled = false,
    energy_required = 0.5,
    allow_decomposition = false,
    ingredients = {
      {type = "item", name = "wood", amount = 2},
      {type = "item", name = "iron-stick", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },
    results = {{type = "item", name = "flotation-platform", amount = 1}}
  },
  {
    type = "recipe",
    name = "seafloor-drill",
    enabled = false,
    energy_required = 1,
    ingredients = {
      {type = "item", name = "steel-plate", amount = 4},
      {type = "item", name = "iron-stick", amount = 4},
      {type = "item", name = "electric-mining-drill", amount = 1}
    },
    results = {{type = "item", name = "seafloor-drill", amount = 1}}
  },
  {
    type = "recipe",
    name = "floating-belt",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "flotation-platform", amount = 1},
      {type = "item", name = "transport-belt", amount = 2}
    },
    results = {{type = "item", name = "floating-belt", amount = 2}}
  },
}
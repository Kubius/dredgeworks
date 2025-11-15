local recipes = data.raw.recipe
local recycle_lib = nil

if mods["quality"] then
  recycle_lib = require("__quality__.prototypes.recycling")
end

local function recyclo_dummy()
  return true
end

for _, inserter_entry in pairs(floating_inserter_index) do
  local create_inserter_recipe = nil
  if (mods["boblogistics"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true) then --manual bob compat
    if(inserter_entry[1] == "floating-bob-red-inserter") then
      create_inserter_recipe = {
        type = "recipe",
        name = inserter_entry[1],
        localised_name = inserter_entry[2],
        subgroup = "inserter-floating",
        enabled = false,
        energy_required = 0.5,
        allow_quality = false,
        auto_recycle = false,
        ingredients = {
          {type = "item", name = "long-handed-inserter", amount = 1},
          {type = "item", name = "flotation-platform", amount = 1}
        },
        results = {{type = "item", name = inserter_entry[1], amount = 1}}
      }
    elseif(inserter_entry[1] ~= "floating-long-handed-inserter") then
      create_inserter_recipe = {
        type = "recipe",
        name = inserter_entry[1],
        localised_name = inserter_entry[2],
        subgroup = "inserter-floating",
        enabled = false,
        energy_required = 0.5,
        allow_quality = false,
        auto_recycle = false,
        ingredients = {
          {type = "item", name = inserter_entry[3], amount = 1},
          {type = "item", name = "flotation-platform", amount = 1}
        },
        results = {{type = "item", name = inserter_entry[1], amount = 1}}
      }
    end
  else
    create_inserter_recipe = {
      type = "recipe",
      name = inserter_entry[1],
      localised_name = inserter_entry[2],
      subgroup = "inserter-floating",
      enabled = false,
      energy_required = 0.5,
      allow_quality = false,
      auto_recycle = false,
      ingredients = {
        {type = "item", name = inserter_entry[3], amount = 1},
        {type = "item", name = "flotation-platform", amount = 1}
      },
      results = {{type = "item", name = inserter_entry[1], amount = 1}}
    }
  end
  if create_inserter_recipe then
    data:extend{create_inserter_recipe}
    if mods["quality"] then
      recycle_lib.generate_recycling_recipe(create_inserter_recipe,recyclo_dummy)
      local adjustment_target = inserter_entry[1] .. "-recycling"
      local adjust_recycling_recipe = data.raw["recipe"][adjustment_target]
      adjust_recycling_recipe.allow_quality = false
      adjust_recycling_recipe.results[1].amount = 1
      adjust_recycling_recipe.results[1].extra_count_fraction = nil
      adjust_recycling_recipe.results[2].amount = 1
      adjust_recycling_recipe.results[2].extra_count_fraction = nil
    end
  end
end

for _, belt_entry in pairs(floating_belt_index) do
  --Increase flotation cost of belts based on how much throughput they have
  local belt_equipment_weight = math.ceil((data.raw["transport-belt"][belt_entry[1]].speed * 31) ^ 1.5)
  local belts_a_batch = 2
  if (belt_equipment_weight > 1) then
    belts_a_batch = 1
  end
  local do_the_float_belt = {
    type = "recipe",
    name = belt_entry[1],
    localised_name = belt_entry[2],
    subgroup = "belt-floating",
    enabled = false,
    energy_required = 0.5,
    allow_quality = false,
    auto_recycle = false,
    ingredients = {
      {type = "item", name = belt_entry[3], amount = belts_a_batch},
      {type = "item", name = "flotation-platform", amount = belt_equipment_weight}
    },
    results = {{type = "item", name = belt_entry[1], amount = belts_a_batch}}
  }
  data:extend{do_the_float_belt}
  if mods["quality"] then
    recycle_lib.generate_recycling_recipe(do_the_float_belt,recyclo_dummy)
    local adjustment_target = belt_entry[1] .. "-recycling"
    local adjust_recycling_recipe = data.raw["recipe"][adjustment_target]
    adjust_recycling_recipe.allow_quality = false
    adjust_recycling_recipe.results[1].amount = 1
    adjust_recycling_recipe.results[1].extra_count_fraction = nil
    if belts_a_batch == 2 then
      adjust_recycling_recipe.results[2].amount = 0
      adjust_recycling_recipe.results[2].extra_count_fraction = 0.5
    else
      adjust_recycling_recipe.results[2].amount = belt_equipment_weight
      adjust_recycling_recipe.results[2].extra_count_fraction = nil
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
  }
}

if mods["quality"] then
  recycle_lib.generate_recycling_recipe(data.raw["recipe"]["wire-buoy"])
  recycle_lib.generate_recycling_recipe(data.raw["recipe"]["light-buoy"])
  recycle_lib.generate_recycling_recipe(data.raw["recipe"]["seafloor-drill"])
end
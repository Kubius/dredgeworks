local function unlock(recipe)
    return {
      type = "unlock-recipe",
      recipe = recipe
    }
  end

local function unlockFlotation(recipe)
    local stuff2unlock = {
      {
        type = "unlock-recipe",
        recipe = "flotation-platform"
      },
      {
        type = "unlock-recipe",
        recipe = "floating-belt"
      }
    }
    for _, insertername in pairs(floating_inserter_index) do
      table.insert(stuff2unlock, {
          type = "unlock-recipe",
          recipe = insertername[1]
        }
      )
    end
    return stuff2unlock
  end

data:extend ({
  {
    type = "technology",
    name = "wire-buoy-technology",
    icon = DREDGEPATH .. "technology/wire-buoy-technology.png",
    icon_size = 256,
    effects = {
      unlock("wire-buoy"),
    },
    prerequisites = {"electric-energy-distribution-1"},
    unit = {
      count = 60,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "c-e-ba",
  },
  {
    type = "technology",
    name = "floating-logistics-technology",
    icon = DREDGEPATH .. "technology/aquatic-logistics.png",
    icon_size = 256,
    effects = unlockFlotation(),
    prerequisites = {"logistics","plastics"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "a-f-aa",
  },
  {
    type = "technology",
    name = "floating-drill-technology",
    icon = DREDGEPATH .. "technology/drillplaceholder.png",
    icon_size = 256,
    effects = {
      unlock("seafloor-drill"),
    },
    prerequisites = {"floating-logistics-technology"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 20
    },
    order = "c-k-a",
  },
})
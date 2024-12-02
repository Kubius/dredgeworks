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
        recipe = "flotation-platform-wood"
      }
    }
    for _, insertername in pairs(floating_inserter_index) do
      if(not (mods["boblogistics"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true and insertername[1] == "floating-long-handed-inserter")) then
        table.insert(stuff2unlock, {
            type = "unlock-recipe",
            recipe = insertername[1]
          }
        )
      end
    end
    for _, beltname in pairs(floating_belt_index) do
      table.insert(stuff2unlock,
        {
          type = "unlock-recipe",
          recipe = beltname[1]
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
    prerequisites = {"electronics", "steel-processing", "logistic-science-pack"},
    unit = {
      count = 100,
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
    prerequisites = {"logistic-science-pack"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 20
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
    prerequisites = {"floating-logistics-technology", "steel-processing"},
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 20
    },
    order = "c-k-a",
  },
})
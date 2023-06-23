-- wire buoy: cable into brave new realms

local wire_buoy = table.deepcopy(data.raw["electric-pole"]["big-electric-pole"])
wire_buoy.name = "wire-buoy"
wire_buoy.icon = DREDGEPATH .. "icons/wirebuoy.png"
wire_buoy.icon_size = 64
wire_buoy.icon_mipmaps = 0
wire_buoy.minable = {mining_time = 0.3, result = "wire-buoy"}
wire_buoy.collision_mask = {'ground-tile','object-layer'}
wire_buoy.maximum_wire_distance = 10
wire_buoy.supply_area_distance = 4
wire_buoy.fast_replaceable_group = nil
wire_buoy.next_upgrade = nil

wire_buoy.pictures = {
    layers = {
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy.png",
        priority = "high",
        width = 128,
        height = 80,
        shift = util.by_pixel(0, -10),
        scale = 1,
        direction_count = 8,
        hr_version = {
          filename = DREDGEPATH .. "entity/wire_buoy/hr-wire-buoy.png",
          priority = "high",
          width = 256,
          height = 160,
          shift = util.by_pixel(0, -10),
          scale = 0.5,
          direction_count = 8,
        }
      },
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy-shadows.png",
        priority = "high",
        width = 128,
        height = 80,
        shift = util.by_pixel(0, -10),
        scale = 1,
        direction_count = 8,
        draw_as_shadow = true,
        hr_version = {
          filename = DREDGEPATH .. "entity/wire_buoy/hr-wire-buoy-shadows.png",
          priority = "high",
          width = 256,
          height = 160,
          shift = util.by_pixel(0, -10),
          scale = 0.5,
          direction_count = 8,
          draw_as_shadow = true,
        }
      },
    }
  }

wire_buoy.water_reflection =
  {
    pictures = {
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy_water_reflection.png",
        width = 32,
        height = 20,
        variation_count = 1,
        shift = util.by_pixel(0, 32),
        scale = 4
      },
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy_water_reflection.png",
        width = 32,
        height = 20,
        x = 32,
        variation_count = 1,
        shift = util.by_pixel(0, 32),
        scale = 4
      },
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy_water_reflection.png",
        width = 32,
        height = 20,
        x = 64,
        variation_count = 1,
        shift = util.by_pixel(0, 32),
        scale = 4
      },
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy_water_reflection.png",
        width = 32,
        height = 20,
        x = 96,
        variation_count = 1,
        shift = util.by_pixel(0, 32),
        scale = 4
      },
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy_water_reflection.png",
        width = 32,
        height = 20,
        x = 128,
        variation_count = 1,
        shift = util.by_pixel(0, 32),
        scale = 4
      },
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy_water_reflection.png",
        width = 32,
        height = 20,
        x = 160,
        variation_count = 1,
        shift = util.by_pixel(0, 32),
        scale = 4
      },
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy_water_reflection.png",
        width = 32,
        height = 20,
        x = 192,
        variation_count = 1,
        shift = util.by_pixel(0, 32),
        scale = 4
      },
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy_water_reflection.png",
        width = 32,
        height = 20,
        x = 224,
        variation_count = 1,
        shift = util.by_pixel(0, 32),
        scale = 4
      },
    },
    rotate = false,
    orientation_to_variation = true,
  }

wire_buoy.connection_points = {
    { -- North -- validated
      wire = {
        copper = {0, -1.5},
        green = {-0.33, -1.1},
        red = {0.33, -1.1}
      },
      shadow = {
        copper = {0, 0},
        green = {0, 0},
        red = {0, 0}
      }
    },
    { -- Northeast -- validated
      wire = {
        copper = {0.23, -1.4},
        green = {-0.35, -1.3},
        red = {0.1, -1}
      },
      shadow = {
        copper = {0, 0},
        green = {0, 0},
        red = {0, 0}
      }
    },
    { -- East
      wire = {
        copper = {0.35, -1.25},
        green = {-0.23, -1.42},
        red = {-0.2, -1}
      },
      shadow = {
        copper = {0, 0},
        green = {0, 0},
        red = {0, 0}
      }
    },
    { -- Southeast
      wire = {
        copper = {0.28, -1.1},
        green = {0.1, -1.5},
        red = {-0.35, -1.15}
      },
      shadow = {
        copper = {0, 0},
        green = {0, 0},
        red = {0, 0}
      }
    },
    { -- South
      wire = {
        copper = {0, -1},
        green = {0.33, -1.4},
        red = {-0.33, -1.4}
      },
      shadow = {
        copper = {0, 0},
        green = {0, 0},
        red = {0, 0}
      }
    },
    { -- Southwest -- validated
      wire = {
        copper = {-0.25, -1.02},
        green = {0.35, -1.15},
        red = {-0.1, -1.45}
      },
      shadow = {
        copper = {0, 0},
        green = {0, 0},
        red = {0, 0}
      }
    },
    { -- West
      wire = {
        copper = {-0.32, -1.2},
        green = {0.2, -1},
        red = {0.2, -1.45}
      },
      shadow = {
        copper = {0, 0},
        green = {0, 0},
        red = {0, 0}
      }
    },
    { -- Northwest
      wire = {
        copper = {-0.25, -1.4},
        green = {-0.05, -1},
        red = {0.35, -1.38}
      },
      shadow = {
        copper = {0, 0},
        green = {0, 0},
        red = {0, 0}
      }
    }  
  }

  for _,v in pairs(wire_buoy.connection_points) do
    v.shadow.copper[1] = v.wire.copper[1] + 0.3 + (v.wire.copper[2] * -0.7)
    v.shadow.copper[2] = v.wire.copper[2] + 1.4
    v.shadow.green[1] = v.wire.green[1] + 0.3 + (v.wire.green[2] * -0.7)
    v.shadow.green[2] = v.wire.green[2] + 1.4
    v.shadow.red[1] = v.wire.red[1] + 0.3 + (v.wire.red[2] * -0.7)
    v.shadow.red[2] = v.wire.red[2] + 1.4
  end

---

local seafloor_drill = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
seafloor_drill.name = "seafloor-drill"
seafloor_drill.minable = {mining_time = 0.5, result = "seafloor-drill"}
seafloor_drill.collision_mask = {'ground-tile','object-layer'}
seafloor_drill.fast_replaceable_group = nil
seafloor_drill.next_upgrade = nil

-- floating belt: it's a belt, but floating

local floating_belt_animation_set =
{
  animation_set =
  {
    filename = DREDGEPATH .. "entity/floating_belt/floating-belt.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    frame_count = 16,
    direction_count = 20,
    hr_version =
    {
      filename = DREDGEPATH .. "entity/floating_belt/hr-floating-belt.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 16,
      direction_count = 20
    }
  },
}

local floating_belt = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
floating_belt.name = "floating-belt"
floating_belt.minable = {mining_time = 0.1, result = "floating-belt"}
floating_belt.collision_mask = {'ground-tile','object-layer','transport-belt-layer'}
floating_belt.fast_replaceable_group = "floating-transport-belt"
floating_belt.next_upgrade = nil
floating_belt.belt_animation_set = floating_belt_animation_set
floating_belt.max_health = 150

local to_add = {}

for _, prototype in pairs(data.raw["inserter"]) do
  local floating_inserter = table.deepcopy(prototype)
  floating_inserter.name = "floating-" .. prototype.name
  floating_inserter.localised_name = {"dredgeworks.floated", prototype.localised_name or ({"entity-name." .. prototype.name})}
  floating_inserter.minable = {mining_time = 0.1, result = "floating-" .. prototype.name}
  floating_inserter.collision_mask = {'ground-tile','object-layer'}
  floating_inserter.fast_replaceable_group = "floating-" .. prototype.fast_replaceable_group
  floating_inserter.next_upgrade = nil
  floating_inserter.platform_picture = {
    sheets = {
      {
        filename = DREDGEPATH .. "entity/flotation-platform.png",
        priority = "extra-high",
        width = 32,
        height = 32,
        shift = {0, 0.1},
        hr_version =
        {
          filename = DREDGEPATH .. "entity/hr-flotation-platform.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          shift = {0, 0.1},
          scale = 0.5
        }
      },
      floating_inserter.platform_picture.sheet
    }
  }
  
  table.insert(floating_inserter_index,
    {
      floating_inserter.name,
      floating_inserter.localised_name,
      prototype.name
    }
  )
  table.insert(to_add,floating_inserter)
end

data:extend(to_add)
data:extend({wire_buoy,seafloor_drill,floating_belt})
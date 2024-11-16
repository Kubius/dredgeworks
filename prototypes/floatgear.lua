-- wire buoy: cable into brave new realms

local wire_buoy = table.deepcopy(data.raw["electric-pole"]["big-electric-pole"])
wire_buoy.name = "wire-buoy"
wire_buoy.icon = DREDGEPATH .. "icons/wirebuoy.png"
wire_buoy.icon_size = 64
wire_buoy.icon_mipmaps = 0
wire_buoy.minable = {mining_time = 0.3, result = "wire-buoy"}
wire_buoy.collision_mask = {layers = {ground_tile = true,object = true}}
wire_buoy.maximum_wire_distance = 10
wire_buoy.supply_area_distance = 4
wire_buoy.fast_replaceable_group = nil
wire_buoy.next_upgrade = nil

wire_buoy.pictures = {
    layers = {
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy.png",
        priority = "high",
        width = 256,
        height = 160,
        shift = util.by_pixel(0, -10),
        scale = 0.5,
        direction_count = 8
      },
      {
        filename = DREDGEPATH .. "entity/wire_buoy/wire-buoy-shadows.png",
        priority = "high",
        width = 256,
        height = 160,
        shift = util.by_pixel(0, -10),
        scale = 0.5,
        direction_count = 8,
        draw_as_shadow = true
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
    v.shadow.copper[1] = v.wire.copper[1] + 1.18
    v.shadow.copper[2] = v.wire.copper[2] + 1.36
    v.shadow.green[1] = v.wire.green[1] + 1.18
    v.shadow.green[2] = v.wire.green[2] + 1.36
    v.shadow.red[1] = v.wire.red[1] + 1.18
    v.shadow.red[2] = v.wire.red[2] + 1.36
  end

---

-- light buoy: get glowy

local light_buoy = table.deepcopy(data.raw["lamp"]["small-lamp"])
light_buoy.name = "light-buoy"
light_buoy.icon = DREDGEPATH .. "icons/lightbuoy.png"
light_buoy.icon_size = 64
light_buoy.icon_mipmaps = 0
light_buoy.minable = {mining_time = 0.1, result = "light-buoy"}
light_buoy.collision_mask = {layers = {ground_tile = true,object = true}}
light_buoy.corpse = nil
light_buoy.next_upgrade = nil
light_buoy.light = {intensity = 0.8, size = 30, color = {r=1.0, g=0.9, b=0.7}}
light_buoy.picture_off = {
    layers = {
      {
        filename = DREDGEPATH .. "entity/light_buoy/light-buoy.png",
        priority = "high",
        width = 112,
        height = 104,
        scale = 0.5,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(11,-2)
      },
      {
        filename = DREDGEPATH .. "entity/light_buoy/light-buoy-shadow.png",
        priority = "high",
        width = 112,
        height = 104,
        scale = 0.5,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(11,-2),
        draw_as_shadow = true
      }
    }
  }
light_buoy.picture_on = {
    filename = DREDGEPATH .. "entity/light_buoy/light-buoy-glow.png",
    priority = "high",
    width = 170,
    height = 170,
    scale = 0.5,
    frame_count = 1,
    direction_count = 1,
    shift = util.by_pixel(0, -12),
    tint = {r = 1, g = 0.9, b = 0.8, a = 0.8}
  }
light_buoy.water_reflection = {
    pictures = {
      {
        filename = DREDGEPATH .. "entity/light_buoy/light-buoy-reflection.png",
        width = 28,
        height = 26,
        shift = util.by_pixel(11, 20),
        scale = 2
      }
    }
  }
--todo eventually maybe
--circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
--circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
--circuit_wire_max_distance = default_circuit_wire_max_distance

---

local seafloor_drill = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
seafloor_drill.name = "seafloor-drill"
seafloor_drill.minable = {mining_time = 0.5, result = "seafloor-drill"}
seafloor_drill.collision_mask = {layers = {ground_tile = true,object = true}}
seafloor_drill.module_slots = 4
seafloor_drill.fast_replaceable_group = nil
seafloor_drill.next_upgrade = nil

-- floating belt: it's a belt, but floating

local floating_belt_animation_set =
{
  animation_set =
  {
    filename = DREDGEPATH .. "entity/floating_belt/floating-belt.png",
    priority = "extra-high",
    width = 128,
    height = 128,
    scale = 0.5,
    frame_count = 16,
    direction_count = 20
  },
}

local floating_belt = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
floating_belt.name = "floating-belt"
floating_belt.minable = {mining_time = 0.1, result = "floating-belt"}
floating_belt.collision_mask = {layers = {ground_tile = true,object = true,transport_belt = true}}
floating_belt.fast_replaceable_group = "floating-transport-belt"
floating_belt.next_upgrade = nil
floating_belt.belt_animation_set = floating_belt_animation_set
floating_belt.max_health = 150

data:extend({wire_buoy,light_buoy,seafloor_drill,floating_belt})
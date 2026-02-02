minetest.register_globalstep(function()
	for _, player in pairs(minetest.get_connected_players()) do
    player:set_properties({
      visual_size = {x=1.125, y=1.125},
    })

    player:set_physics_override({
      gravity = 1.65,
      jump = 1.4,
      speed = 1,
    })

    player:set_lighting({saturation = 1.2})

    player:set_fov(1, true, 0.1)
    if (player:get_velocity().x) > 4 or (player:get_velocity().x) < -4 then
      player:set_fov(1.1, true, 0.1)
    end
    if (player:get_velocity().z) > 4 or (player:get_velocity().z) < -4 then
      player:set_fov(1.1, true, 0.1)
    end
  end
end)

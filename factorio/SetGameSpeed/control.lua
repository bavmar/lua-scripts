commands.add_command("speed", "Set game speed", function(event)
  if game.get_player(event.player_index).admin then
    local status, err = pcall(function ()
      game.speed = tonumber(event.parameter)
      game.print("Set game speed to " .. event.parameter)
    end)
    if not status then
      game.print(err)
    end
  end
end)
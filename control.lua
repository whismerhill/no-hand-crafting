
local function setSpawnItems()
	if remote.interfaces.freeplay and remote.interfaces.freeplay.get_created_items and remote.interfaces.freeplay.set_created_items then
		local tb = {}
		 tb = remote.call("freeplay", "get_created_items")
		 tb["burner-assembling-machine"] = 1
		 remote.call("freeplay", "set_created_items", tb)
	end
end

local function setRespawnItems()
	if remote.interfaces.freeplay and remote.interfaces.freeplay.get_respawn_items and remote.interfaces.freeplay.set_respawn_items then
		local tb = {}
		 tb = remote.call("freeplay", "get_respawn_items")
		 tb["burner-assembling-machine"] = 1
		 remote.call("freeplay", "set_respawn_items", tb)
	end
end

script.on_event(defines.events.on_game_created_from_scenario, function(event)
	setSpawnItems()
	setRespawnItems()
end)

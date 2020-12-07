---------------------------------------------------------------------------------------------------
-- func: home
-- desc: teleports the player to their homepoint
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local gmlvl = player:getGMLevel()
	local lastuse = player:getCharVar("LastHomeCommand")
	local reusetime = 1800 -- 30 minute reuse time
	if (lastuse == nil or (os.time() >= lastuse + reusetime) or gmlvl > 0) then
		lastuse = os.time()
		player:setCharVar("LastHomeCommand", lastuse)
		player:warp();
	else
		local nextusesecs = (lastuse + reusetime) - os.time()
		local nextusemins = math.floor(nextusesecs / 60)
		nextusesecs = nextusesecs - (nextusemins*60)
		player:PrintToPlayer(string.format("You cannot use that command again for %s minutes %s seconds.", nextusemins, nextusesecs))
	end	
end
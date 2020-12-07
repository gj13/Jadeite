---------------------------------------------------------------------------------------------------
-- func: moogle
-- desc: opens the moogle menu
---------------------------------------------------------------------------------------------------

require("scripts/globals/moghouse")

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local gmlvl = player:getGMLevel()
	local lastuse = player:getCharVar("LastMoogleCommand")
	local reusetime = 1800 -- 30 minute reuse time
	if (lastuse == nil or (os.time() >= lastuse + reusetime) or gmlvl > 0)then
		lastuse = os.time()
		player:setCharVar("LastMoogleCommand", lastuse)
		player:sendMenu(1)
	else
		local nextusesecs = (lastuse + reusetime) - os.time()
		local nextusemins = math.floor(nextusesecs / 60)
		nextusesecs = nextusesecs - (nextusemins*60)
		player:PrintToPlayer(string.format("You cannot use that command again for %s minutes %s seconds.", nextusemins, nextusesecs))
	end	
end
---------------------------------------------------------------------------------------------------
-- func: ah
-- desc: opens the Auction House menu anywhere in the world
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
}

function onTrigger(player)
    local gmlvl = player:getGMLevel()
	local lastuse = player:getCharVar("LastAuctionCommand")
	local reusetime = 1800 -- 30 minute reuse time
	if (lastuse == nil or (os.time() >= lastuse + reusetime) or gmlvl > 0) then
		lastuse = os.time()
		player:setCharVar("LastAuctionCommand", lastuse)
		player:sendMenu(3);
	else
		local nextusesecs = (lastuse + reusetime) - os.time()
		local nextusemins = math.floor(nextusesecs / 60)
		nextusesecs = nextusesecs - (nextusemins*60)
		player:PrintToPlayer(string.format("You cannot use that command again for %s minutes %s seconds.", nextusemins, nextusesecs))
	end
end;
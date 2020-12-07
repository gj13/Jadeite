---------------------------------------------------------------------------------------------------
-- func: merch
-- desc: opens the merchant menu
---------------------------------------------------------------------------------------------------

require("scripts/globals/moghouse")

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local gmlvl = player:getGMLevel()
	local lastuse = player:getCharVar("LastMerchCommand")
	local reusetime = 1800 -- 30 minute reuse time
	if (lastuse == nil or (os.time() >= lastuse + reusetime) or gmlvl > 0)then
		lastuse = os.time()
		player:setCharVar("LastMerchCommand", lastuse)
        local stock =
        {
			5685, 1,    -- Rabbit Pie
			5765, 1,    -- Red curry bun+1
			4523, 1,    -- Melon pie+1
			5163, 1,	-- Sole sushi+1
			5158, 1,	-- Vermillion jelly
			4574, 1,	-- Meat chiefkabob
			5744, 1,	-- Marinara pizza+1
			5162, 1,	-- Squid sushi+1
			4488, 1,	-- Jack-o-lantern
			5175, 1,	-- Leremiue taco
			4558, 1,	-- Yagudo drink
			4303, 1,	-- Persikos au lait
			5554, 1,	-- Squirrel's delight
			5888, 1,	-- Marigna
			5892, 1,	-- B.E.W. pitaru
            688, 18,    -- Arrowwood Log
            621, 25,    -- Crying Mustard
            618, 25,    -- Blue Peas
            698, 88,    -- Ash Log
			
        }

        tpz.shop.general(player, stock, SANDORIA)

	else
		local nextusesecs = (lastuse + reusetime) - os.time()
		local nextusemins = math.floor(nextusesecs / 60)
		nextusesecs = nextusesecs - (nextusemins*60)
		player:PrintToPlayer(string.format("You cannot use that command again for %s minutes %s seconds.", nextusemins, nextusesecs))
	end	
end
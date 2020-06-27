---------------------------------------------------------------------------------------------------
-- func: shells
-- desc: displays current rainbow shells (daily login reward) or uses them for rewards (expbuff)
---------------------------------------------------------------------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg");

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, command)
	local rainbowshells = player:getCharVar("RainbowShells")
	local expbuffcost = 3
	local weaknesscost = 1
	local homecost = 1
	local merchcost = 1
	local mooglecost = 1
	
	if (command == "expbuff") then
		if (player:hasStatusEffect(tpz.effect.DEDICATION) == true) then
			player:PrintToPlayer("You already have an exp buff active.", 0x1F)
		else
			if rainbowshells >= expbuffcost then
				player:setCharVar("RainbowShells", rainbowshells-expbuffcost)
				player:addStatusEffect(tpz.effect.DEDICATION,100,0,43200,0,30000)
				player:PrintToPlayer(string.format("You extracted energy from %i rainbow shells, granting you an experience buff.", expbuffcost),0x1F)
			else
				player:PrintToPlayer(string.format("You do not have enough rainbow shells. You currently have %i, but need %i", rainbowshells, expbuffcost),0x1F) -- You do not have enough shells
			end
		end
	elseif (command == "weakness") then
		if (player:hasStatusEffect(tpz.effect.WEAKNESS) == false) then
			player:PrintToPlayer("You are not weakened.", 0x1F)
		else
			if rainbowshells >= weaknesscost then
				player:setCharVar("RainbowShells", rainbowshells-weaknesscost)
				player:delStatusEffect(tpz.effect.WEAKNESS)
				player:PrintToPlayer("The energy from the rainbow shell gives you a second wind.", 0x1F)
			else
				player:PrintToPlayer(string.format("You do not have enough rainbow shells. You currently have %i, but need %i", rainbowshells, weaknesscost),0x1F) -- You do not have enough shells
			end
		end
	elseif (command == "home") then
		if (rainbowshells >= homecost) then
			player:setCharVar("Rainbowshells", rainbowshells-homecost)
			player:warp()
		else
			player:PrintToPlayer(string.format("You do not have enough rainbow shells. You currently have %i, but need %i", rainbowshells, homecost),0x1F) -- You do not have enough shells
		end
	elseif (command == "merch") then
		if (rainbowshells >= merchcost) then
			player:setCharVar("Rainbowshells", rainbowshells-merchcost)
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
			player:PrintToPlayer(string.format("You do not have enough rainbow shells. You currently have %i, but need %i", rainbowshells, merchcost),0x1F) -- You do not have enough shells
		end
	elseif (command == "moogle") then
		if (rainbowshells >= mooglecost) then
			player:setCharVar("Rainbowshells", rainbowshells-mooglecost)
			player:sendMenu(1)
		else
			player:PrintToPlayer(string.format("You do not have enough rainbow shells. You currently have %i, but need %i", rainbowshells, mooglecost),0x1F) -- You do not have enough shells
		end
	
	else
	player:PrintToPlayer(string.format("You have %i rainbow shell(s). Subcommands: expbuff [%i shells] (100 percent bonus, up to 30k for 12h)", rainbowshells, expbuffcost),0x1F)
	player:PrintToPlayer(string.format("weakness [%i shell] (Removes weakened status)", weaknesscost), 0x1F)
	end
end

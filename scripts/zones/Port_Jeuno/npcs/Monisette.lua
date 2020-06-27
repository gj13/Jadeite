-----------------------------------
-- Area: Port Jeuno
--  NPC: Monisette
-- Dynamis currency exchanger
-----------------------------------

function onTrade(player,npc,trade)
	local dynapoints = player:getCharVar("DynaPoints")
	local tradeamount = 0
	local dynaCurrencies =
	{
		["one_shell"]	= 1449,
		["hnd_shell"]	= 1450,
		["tth_shell"]	= 1451,
		["one_piece"]	= 1452,
		["hnd_piece"]	= 1453,
		["tth_piece"]	= 1454,
		["one_byne"]	= 1455,
		["hnd_byne"]	= 1456,
		["tth_hyne"]	= 1457
	};

	if (trade:getGil() == 0) then -- start deposit
		if (npcUtil.tradeHas(trade, 1449) or npcUtil.tradeHas(trade, 1450) or npcUtil.tradeHas(trade, 1451) or npcUtil.tradeHas(trade, 1452) or npcUtil.tradeHas(trade, 1453) or npcUtil.tradeHas(trade, 1454) or npcUtil.tradeHas(trade, 1455) or npcUtil.tradeHas(trade, 1456) or npcUtil.tradeHas(trade, 1457)) then -- trade has a valid currency
			for i=1449, 1457 do
				if (i == 1449 or i == 1452 or i == 1455) then -- if singles, add 1 for each
					tradeamount = tradeamount + trade:getItemQty(i)
				elseif (i == 1450 or i == 1453 or i == 1456) then -- if hundreds, add amount based on exchange rate
					tradeamount = tradeamount + (trade:getItemQty(i)*CURRENCY_EXCHANGE_RATE)
				else -- if then thousands, add amount based on exchange rate^2
					tradeamount = tradeamount + (trade:getItemQty(i)*CURRENCY_EXCHANGE_RATE*CURRENCY_EXCHANGE_RATE)
				end
			end
			player:tradeComplete()
			player:setCharVar("DynaPoints", (dynapoints+tradeamount))
			dynapoints = player:getCharVar("DynaPoints")
			if (dynapoints == 1) then
				player:PrintToPlayer( string.format("I have added %s to your balance. You now have %s Dyna point.", tradeamount, dynapoints), 0x0, npc:getName()) -- report deposit
			else
				player:PrintToPlayer( string.format("I have added %s to your balance. You now have %s Dyna points.", tradeamount, dynapoints), 0x0, npc:getName()) -- report deposit
			end
		else
			player:PrintToPlayer("No valid currency traded.")
		end
	else -- start withdraw	
		local total = trade:getGil()
		local singles = total
		local hundos = 0
		local thous = 0
		local slotsneeded = 0
		if (singles >= (CURRENCY_EXCHANGE_RATE*CURRENCY_EXCHANGE_RATE)) then -- reduce singles by highest denomination
			thous = math.floor(singles/(CURRENCY_EXCHANGE_RATE*CURRENCY_EXCHANGE_RATE))
			singles = singles - (thous*CURRENCY_EXCHANGE_RATE*CURRENCY_EXCHANGE_RATE)
		end
		if  singles >= (CURRENCY_EXCHANGE_RATE) then -- reduce singles by hundreds
			hundos = math.floor(singles/CURRENCY_EXCHANGE_RATE)
			singles = singles - (hundos*CURRENCY_EXCHANGE_RATE)
		end
		if singles > 0 then -- figure out how many slots are needed
			slotsneeded = slotsneeded + 1
		end
		if hundos > 0 then
			slotsneeded = slotsneeded + 1
		end
		if thous > 0 then
			slotsneeded = slotsneeded + 1
		end
		if (player:getFreeSlotsCount() < slotsneeded) then -- does player have enough free space?
			player:PrintToPlayer("You do not have available inventory space.")
		else
			if (total > dynapoints) then -- make sure player has enough points
				player:PrintToPlayer("I'm afraid you don't have enough Dyna points for that withdrawal.", 0x0, npc:getName());
			else	
				if npcUtil.tradeHas(trade, {1449, "gil"}) then
					if thous > 0 then
						player:addItem(1451, thous)
					end
					if hundos > 0 then
						player:addItem(1450, hundos)
					end
					if singles > 0 then
						player:addItem(1449, singles)
					end
				elseif npcUtil.tradeHas(trade, {1452, "gil"}) then
					if thous > 0 then
						player:addItem(1454, thous)
					end
					if hundos > 0 then
						player:addItem(1453, hundos)
					end
					if singles > 0 then
						player:addItem(1452, singles)
					end
				elseif npcUtil.tradeHas(trade, {1455, "gil"}) then
					if thous > 0 then
						player:addItem(1457, thous)
					end
					if hundos > 0 then
						player:addItem(1456, hundos)
					end
					if singles > 0 then
						player:addItem(1455, singles)
					end
				else
					player:PrintToPlayer("Please trade me a single of a valid currency, plus the amount in gil that you wish to withdraw.", 0x0, npc:getName()) -- no valid single
				end
				player:setCharVar("DynaPoints", (dynapoints-total)) -- reduce points
				dynapoints = player:getCharVar("DynaPoints")
				if (dynapoints == 1) then -- report withdraw and remaining balance
					player:PrintToPlayer( string.format("Your withdrawal of %s is complete. You now have %s Dyna point.", total, dynapoints), 0x0, npc:getName())
				else
					player:PrintToPlayer( string.format("Your withdrawal of %s is complete. You now have %s Dyna points.", total, dynapoints), 0x0, npc:getName())
				end
			end
		end
	end
end;

function onTrigger(player,npc)
local dynapoints = player:getCharVar("DynaPoints")
if (dynapoints == nil) then -- initial setup for first-timers
	player:setCharVar("DynaPoints", 0)
	dynapoints = player:getCharVar("DynaPoints")
end
if (dynapoints == 0) then -- if player hasn't made a deposit yet, give intro text
	player:PrintToPlayer("Greetings, adventurer! I provide ancient currency exchange services. In exchange for various ancient currency, you will be awarded Dyna points.", 0x0, npc:getName());
	player:PrintToPlayer("These points can then be used to receive the ancient currency of your choice. To get started, simply trade me any quantity of ancient currency.", 0x0, npc:getName());
	player:PrintToPlayer("It is recommended to hold on to at least one of each currency type for easy withdrawals.", 0x0, npc:getName());
elseif (dynapoints == 1) then -- singluar "point" used if one point balance
	player:PrintToPlayer( string.format("Welcome back, %s! You currently have %s Dyna point.", player:getName(), dynapoints), 0x0, npc:getName());
	player:PrintToPlayer("To make a withdrawal, trade me one of the type of currency you would like, along with the amount in gil.", 0x0, npc:getName())
else -- otherwise, show balance and withdraw text
	player:PrintToPlayer( string.format("Welcome back, %s! You currently have %s Dyna points.", player:getName(), dynapoints), 0x0, npc:getName());
	player:PrintToPlayer("To make a withdrawal, trade me one of the type of currency you would like, along with the amount in gil.", 0x0, npc:getName())
end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

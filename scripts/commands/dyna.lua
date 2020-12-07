---------------------------------------------------------------------------------------------------
-- func: dyna
-- desc: displays DynaPoints or makes a withdraw
---------------------------------------------------------------------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg");

	local dynaCurrencies =	{
		["shell"]	= {
			["single"] =	1449,
			["hundred"]	=	1450,
			["thousand"] =	1451
		},
		["coin"] = {
			["single"] =	1452,
			["hundred"]	=	1453,
			["thousand"] =	1454
		},
		["bill"] = {
			["single"] =	1455,
			["hundred"]	=	1456,
			["thousand"] =	1457
		}
	};

cmdprops =
{
    permission = 0,
    parameters = "iss"
};

function onTrigger(player, qty, denom, type)
	local dynapoints = player:getCharVar("DynaPoints")
	local validqty = 0
	local validdenom = 0
	local validtype = 0
	qty = tonumber(qty)
	if qty ~= nil then
		validqty = 1
	end
	if denom == "single" or denom == "hundred" or denom == "thousand" then
		validdenom = 1
	end
	if type == "shell" or type == "bill" or type == "coin" then
		validtype = 1
	end
	-- print(string.format("dyna %s %s %s (%i %i %i)", qty, denom, type, validqty, validdenom, validtype))
	if (validqty == 1 and validdenom == 1 and validtype == 1) then -- if valid withdrawal
		local cost -- determined cost
		if denom == "single" then
			cost = qty
		elseif denom == "hundred" then
			cost = qty*CURRENCY_EXCHANGE_RATE
		elseif denom == "thousand" then
			cost = qty*CURRENCY_EXCHANGE_RATE*CURRENCY_EXCHANGE_RATE
		end
		if cost > dynapoints then -- if not enough DynaPoints
			player:PrintToPlayer(string.format("You cannot make a withdrawal of %i. You only have %i DynaPoints.", cost, dynapoints), 0x1F)
		else -- otherwise, withdrawal
			player:addItem(dynaCurrencies[type][denom], qty)
			dynapoints = dynapoints-cost
			player:setCharVar("DynaPoints", dynapoints)
			player:PrintToPlayer(string.format("%i %s %s withdrawn. You now have %i DynaPoints.", qty, denom, type, dynapoints), 0x1F)
		end
	else -- balance inquiry
		player:PrintToPlayer(string.format("You have %i DynaPoints. To make a withdrawal, use: !dyna [#] [single/hundred/thousand] [shell/bill/coin]", dynapoints), 0x1F)
	end
end

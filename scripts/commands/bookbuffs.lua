---------------------------------------------------------------------------------------------------
-- func: bookbuffs
-- desc: gives buffs from grounds tome for 100 tabs
---------------------------------------------------------------------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg");

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	local tabs = player:getCurrency("valor_point")
	if tabs >= 100 then
        player:delCurrency("valor_point", 100)
		player:delStatusEffectSilent(tpz.effect.RERAISE)
		player:addStatusEffect(tpz.effect.RERAISE, 1, 0, 7200)
		player:delStatusEffectSilent(tpz.effect.REGEN)
		player:addStatusEffect(tpz.effect.REGEN, 1, 3, 3600)
		player:delStatusEffectSilent(tpz.effect.REFRESH)
		player:addStatusEffect(tpz.effect.REFRESH, 1, 3, 3600, 0, 3)
		local mLvl = player:getMainLvl()
		local power = 0
		if mLvl < 27 then
			power = 15
		elseif mLvl < 47 then
			power = 40
		elseif mLvl < 63 then
			power = 75
		else
			power = 120
		end
		player:delStatusEffectSilent(tpz.effect.PROTECT)
		player:addStatusEffect(tpz.effect.PROTECT, power, 0, 3600)
		if mLvl < 37 then
			power = 24
		elseif mLvl < 57 then
			power = 36
		elseif mLvl < 68 then
			power = 48
		else
			power = 56
		end
		player:delStatusEffectSilent(tpz.effect.SHELL)
		player:addStatusEffect(tpz.effect.SHELL, power, 0, 3600) --increased from 1800
		player:delStatusEffectSilent(tpz.effect.HASTE)
		player:addStatusEffect(tpz.effect.HASTE, 1000, 0, 3600) --increased from 600

		player:PrintToPlayer("Buffs applied for 100 tabs.", 0x1F)

	else
		player:PrintToPlayer("You do not have enough tabs.", 0x1F) -- You do not have enough tabs.
	end
end

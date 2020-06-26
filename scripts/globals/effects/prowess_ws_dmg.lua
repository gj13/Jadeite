-----------------------------------
--
-- tpz.effect.PROWESS : Increased weapon skill damage
--
-----------------------------------

function onEffectGain(target,effect)
	target:addMod(tpz.mod.ALL_WSDMG_ALL_HITS, effect:getPower())
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
	target:delMod(tpz.mod.ALL_WSDMG_ALL_HITS, effect:getPower())
end
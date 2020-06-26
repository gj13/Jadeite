-----------------------------------
--
-- tpz.effect.PROWESS : Increased combat and magic skill gain
--
-----------------------------------

function onEffectGain(target,effect)
	target:addMod(tpz.mod.COMBAT_SKILLUP_RATE, effect:getPower())
	target:addMod(tpz.mod.MAGIC_SKILLUP_RATE, effect:getPower())
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
	target:delMod(tpz.mod.COMBAT_SKILLUP_RATE, effect:getPower())
	target:delMod(tpz.mod.MAGIC_SKILLUP_RATE, effect:getPower())
end
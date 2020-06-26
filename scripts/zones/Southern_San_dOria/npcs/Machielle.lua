-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Machielle
-- Norvallen Regional Merchant
-----------------------------------
require("scripts/globals/events/harvest_festivals")
local ID = require("scripts/zones/Southern_San_dOria/IDs")
require("scripts/globals/conquest")
require("scripts/globals/npc_util")
require("scripts/globals/quests")

function onTrade(player,npc,trade)
    if player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.FLYERS_FOR_REGINE) == QUEST_ACCEPTED and npcUtil.tradeHas(trade, 532) then
        player:messageSpecial(ID.text.FLYER_REFUSED)
    else
        onHalloweenTrade(player, trade, npc)
    end
end

function onTrigger(player,npc)
    if GetRegionOwner(tpz.region.NORVALLEN) ~= tpz.nation.SANDORIA then
        -- player:showText(npc, ID.text.MACHIELLE_CLOSED_DIALOG)
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

        player:showText(npc,ID.text.MACHIELLE_OPEN_DIALOG)
        dsp.shop.general(player, stock, SANDORIA)

    else
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

        player:showText(npc,ID.text.MACHIELLE_OPEN_DIALOG)
        tpz.shop.general(player, stock, SANDORIA)
    end
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end

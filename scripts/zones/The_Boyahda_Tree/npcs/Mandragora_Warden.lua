-----------------------------------
-- Area: The Boyahda Tree
--  NPC: Mandragora Warden
-- Type: Mission NPC
-- !pos 81.981 7.593 139.556 153
-----------------------------------
local ID = require("scripts/zones/The_Boyahda_Tree/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/npc_util")
require("scripts/globals/status")
-----------------------------------

function onTrade(player,npc,trade)
    local missionStatus = player:getCharVar("MissionStatus")

    if player:getCurrentMission(WINDURST) == tpz.mission.id.windurst.DOLL_OF_THE_DEAD and (missionStatus == 4 or missionStatus == 5) and npcUtil.tradeHas(trade, 1181) then
        player:startEvent(13)
	else
		player:PrintToPlayer("It looks like the mandragora wants something...but it wasn't that!")
		npc:setAnimation(1)
        player:delStatusEffectSilent(tpz.effect.POISON)
		player:addStatusEffect(tpz.effect.POISON, 1, 0, 10800)
	end
end

function onTrigger(player,npc)
    if player:getCharVar("MissionStatus") == 4  or player:getCharVar("MissionStatus") == 5 then
        player:messageText(npc, ID.text.WARDEN_SPEECH)
        player:messageSpecial(ID.text.WARDEN_TRANSLATION)
    else
        player:startEvent(10)
		player:PrintToPlayer("It looks like the mandragora wants something...")
	end
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
    if csid == 13 then
        player:setCharVar("MissionStatus", 6)
        npcUtil.giveKeyItem(player, tpz.ki.LETTER_FROM_ZONPAZIPPA)
    end
end

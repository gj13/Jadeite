-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Ilita
--  Linkshell Merchant
-- !pos -142 -1 -25 236
-----------------------------------
local ID = require("scripts/zones/Southern_San_dOria/IDs")
require("scripts/globals/shop")


function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    local stock =
    {
        512,  8000,     -- Linkshell
        16285, 375,     -- Pendant Compass
		18247,	30,		-- Balm sachet
		18248,	30,		-- Mille sachet
		18249,	30,		-- Olibanum sachet
		18250,  30,		-- Attar sachet
		18251,	30,		-- Sweet sachet
		18252,	30,		-- Civet sachet
		18253,	30,		-- Musk sachet
		18246,  15,	    -- Rogetsurin lvl 15 throwing wep
		1112,	12,		--/orcish-mail-scales
		549,	33,		--/delkfutt-key
		15458,	75,		--/ninurtas-sash
		17809,	1,		--/mumeito
		17859,	30,		--/animator
		14062,	1242069,--Carbuncle Mitts
		1433,	75, 	--drk testimony
 }

    player:showText(npc, ID.text.PAUNELIE_SHOP_DIALOG, 513)
    tpz.shop.general(player, stock)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end

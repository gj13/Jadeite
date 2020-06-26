-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Capucine
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Southern_San_dOria/IDs")
require("scripts/globals/shop")

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    local stock =
    {
        -- 12473, 1904,    -- Poet's Circlet
        -- 12608, 1288,    -- Tunic
        -- 12601, 2838,    -- Linen Robe
        -- 12736,  602,    -- Mitts
        -- 12729, 1605,    -- Linen Cuffs
        -- 12864,  860,    -- Slacks
        -- 12857, 2318,    -- Linen Slops
        -- 12992,  556,    -- Solea
        -- 12985, 1495,    -- Holly Clogs
		
		-- warrior
		11988,	30,	--/fighters-torque
		16678,	40,	--/razor-axe
		14089,	52,	--/fighters-calligae
		13961,	54,	--/fighters-mufflers
		12511,	56,	--/fighters-mask
		14214,	58,	--/fighters-cuisses
		12638,	60,	--/fighters-lorica
		
		-- monk
		11989,	30,	--/temple-torque
		17478,	42,	--/beat-cesti
		14090,	52,	--/temple-gaiters
		13962,	54,	--/temple-gloves
		12512,	56,	--/temple-crown
		12639,	58,	--/temple-cyclas
		14215,	60,	--/temple-hose
		
		-- ninja
		12000,	30,	--/ninja-shusa
		17771,	40,	--/anju
		17772,	40,	--/zushio
		14226,	52,	--/ninja-hakama
		14101,	54,	--/ninja-kyahan
		13869,	56,	--/ninja-hatsuburi
		13782,	58,	--/ninja-chainmail
		13973,	60,	--/ninja-tekko
		
		-- dancer
		12006,	30,	--/dancers-torque
		19203,	40,	--/war-hoop
		15003,	52,	--/dancers-bangles
		16139,	54,	--/dancers-tiara
		15747,	56,	--/dancers-shoes
		15660,	58,	--/dancers-tights
		14579,	60,	--/dancers-casaque
		15002,	520, --m/dancers-bangles
		16138,	540, --m/dancers-tiara
		15746,	560, --m/dancers-shoes
		15659,	580, --m/dancers-tights
		14578,	600, --m/dancers-casaque
    }

    player:showText(npc, ID.text.CAPUCINE_SHOP_DIALOG)
    tpz.shop.general(player, stock)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end

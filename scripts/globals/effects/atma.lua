-----------------------------------
--
-- tpz.effect.ATMA
--
-- Also used for Voidwatch Atmacite
-- (it is a single effect in the client).
--
-----------------------------------
require("scripts/globals/keyitems")
require("scripts/globals/status")

local ATMA_OFFSET = tpz.ki.ATMA_OF_THE_LION - 1
atmaMods =
	{
    -- GROUP 1
    [tpz.ki.ATMA_OF_THE_LION]                   = {tpz.mod.TRIPLE_ATTACK, 7, tpz.mod.DMGPHYS, -10, tpz.mod.THUNDERATT, 30},
    [tpz.ki.ATMA_OF_THE_STOUT_ARM]              = {tpz.mod.STR, 40, tpz.mod.ATT, 50, tpz.mod.RATT, 40},
    [tpz.ki.ATMA_OF_THE_TWIN_CLAW]              = {tpz.mod.DEF, 40, tpz.mod.MDEF, 20, tpz.mod.CHARMRES, 20},
    [tpz.ki.ATMA_OF_ALLURE]                     = {tpz.mod.MPP, 30, tpz.mod.MND, 30, tpz.mod.ENMITY, -30},
    [tpz.ki.ATMA_OF_ETERNITY]                   = {tpz.mod.ENEMYCRITRATE, -20, tpz.mod.SLOWRES, 30, tpz.mod.CURSERES, 30},
    [tpz.ki.ATMA_OF_THE_HEAVENS]                = {tpz.mod.MACC, 30, tpz.mod.DMGPHYS, -10, tpz.mod.PARALYZERES, 30},
    [tpz.ki.ATMA_OF_THE_BAYING_MOON]            = {tpz.mod.ATT, 30, tpz.mod.MATT, 30},
    [tpz.ki.ATMA_OF_THE_EBON_HOOF]              = {tpz.mod.HPP, 30, tpz.mod.SLEEPRES, 50},
    [tpz.ki.ATMA_OF_TREMORS]                    = {tpz.mod.DMG, -20, tpz.mod.SILENCERES, 40},
    [tpz.ki.ATMA_OF_THE_SAVAGE_TIGER]           = {tpz.mod.AGI, 30, tpz.mod.DOUBLE_ATTACK, 10},
    [tpz.ki.ATMA_OF_THE_VORACIOUS_VIOLET]       = {tpz.mod.STR, 50, tpz.mod.DOUBLE_ATTACK, 10, tpz.mod.REGAIN, 20},
    [tpz.ki.ATMA_OF_CLOAK_AND_DAGGER]           = {tpz.mod.ACC, 40, tpz.mod.EVA, 40},
    [tpz.ki.ATMA_OF_THE_STORMBIRD]              = {tpz.mod.ACC, 40, tpz.mod.THUNDERATT, 40, tpz.mod.REFRESH, 5},
    [tpz.ki.ATMA_OF_THE_NOXIOUS_FANG]           = {tpz.mod.SUBTLE_BLOW, 40, tpz.mod.WATERATT, 40, tpz.mod.POISONRES, 40},
    [tpz.ki.ATMA_OF_VICISSITUDE]                = {tpz.mod.DEF, 40, tpz.mod.MDEF, 20, tpz.mod.REGEN, 15},
    [tpz.ki.ATMA_OF_THE_BEYOND]                 = {tpz.mod.MATT, 30, tpz.mod.ICEATT, 30, tpz.mod.LIGHTATT, 30},
    [tpz.ki.ATMA_OF_STORMBREATH]                = {tpz.mod.VIT, 30, tpz.mod.DMGBREATH, -30},
    [tpz.ki.ATMA_OF_GALES]                      = {tpz.mod.WINDATT, 30, tpz.mod.WINDACC, 30},
    [tpz.ki.ATMA_OF_THRASHING_TENDRILS]         = {tpz.mod.CHR, 30, tpz.mod.CRITHITRATE, 20},
    [tpz.ki.ATMA_OF_THE_DRIFTER]                = {tpz.mod.RATT, 30, tpz.mod.RACC, 40},
    [tpz.ki.ATMA_OF_THE_STRONGHOLD]             = {tpz.mod.ATT, 40, tpz.mod.DEF, 40, tpz.mod.REGEN, 15},
    [tpz.ki.ATMA_OF_THE_HARVESTER]              = {tpz.mod.STR, 30, tpz.mod.DOUBLE_ATTACK, 10, tpz.mod.SLEEPRES, 40},
    [tpz.ki.ATMA_OF_DUNES]                      = {tpz.mod.STORETP, 20, tpz.mod.SLOWRES, 40},
    [tpz.ki.ATMA_OF_THE_COSMOS]                 = {tpz.mod.DARKATT, 40, tpz.mod.AMNESIARES, 40, tpz.mod.SILENCERES, 40},
    [tpz.ki.ATMA_OF_THE_SIREN_SHADOW]           = {tpz.mod.ATT, 40, tpz.mod.EVA, 40, tpz.mod.PARALYZERES, 40},
    [tpz.ki.ATMA_OF_THE_IMPALER]                = {tpz.mod.DOUBLE_ATTACK, 20, tpz.mod.BINDRES, 40, tpz.mod.BLINDRES, 40},
    [tpz.ki.ATMA_OF_THE_ADAMANTINE]             = {tpz.mod.VIT, 20, tpz.mod.DEF, 40},
    [tpz.ki.ATMA_OF_CALAMITY]                   = {tpz.mod.SLOWRES, 40, tpz.mod.BLINDRES, 40},
    [tpz.ki.ATMA_OF_THE_CLAW]                   = {tpz.mod.EARTHATT, 30, tpz.mod.EARTHACC, 40},
    [tpz.ki.ATMA_OF_BALEFUL_BONES]              = {tpz.mod.STR, 20, tpz.mod.DARKACC, 40},
    [tpz.ki.ATMA_OF_THE_CLAWED_BUTTERFLY]       = {tpz.mod.FIREACC, 40, tpz.mod.INT, 30},
    [tpz.ki.ATMA_OF_THE_DESERT_WORM]            = {tpz.mod.MND, 20, tpz.mod.ACC, 40, tpz.mod.MAGIC_NULL, 5},
    [tpz.ki.ATMA_OF_THE_UNDYING]                = {tpz.mod.MND, 40, tpz.mod.CONSERVE_MP, 10, tpz.mod.ICEATT, 20},
    [tpz.ki.ATMA_OF_THE_IMPREGNABLE_TOWER]      = {tpz.mod.HPP, 30, tpz.mod.MACC, 40, tpz.mod.MATT, 40},
    [tpz.ki.ATMA_OF_THE_SMOLDERING_SKY]         = {tpz.mod.ATT, 20, tpz.mod.MACC, 40, tpz.mod.FIREATT, 30},
    [tpz.ki.ATMA_OF_THE_DEMONIC_SKEWER]         = {tpz.mod.STR, 20, tpz.mod.TP_BONUS, 20, tpz.mod.NULL_PHYSICAL_DAMAGE, 5},
    [tpz.ki.ATMA_OF_THE_GOLDEN_CLAW]            = {tpz.mod.SKILLCHAINBONUS, 20, tpz.mod.STR, 20},
    [tpz.ki.ATMA_OF_THE_GLUTINOUS_OOZE]         = {tpz.mod.MND, 20, tpz.mod.WATERACC, 20},
    [tpz.ki.ATMA_OF_THE_LIGHTNING_BEAST]        = {tpz.mod.FASTCAST, 20, tpz.mod.SPELLINTERRUPT, 20},
    [tpz.ki.ATMA_OF_THE_NOXIOUS_BLOOM]          = {tpz.mod.STORETP, 20, tpz.mod.WALTZ_POTENTCY, 10},
    [tpz.ki.ATMA_OF_THE_GNARLED_HORN]           = {tpz.mod.AGI, 50, tpz.mod.CRITHITRATE, 20, tpz.mod.COUNTER, 10},
    [tpz.ki.ATMA_OF_THE_STRANGLING_WIND]        = {tpz.mod.STR, 20, tpz.mod.VIT, 20, tpz.mod.AGI, 30},
    [tpz.ki.ATMA_OF_THE_DEEP_DEVOURER]          = {tpz.mod.SUBTLE_BLOW, 5, tpz.mod.STORETP, 5, tpz.mod.SONG_SPELLCASTING_TIME, 20},
    [tpz.ki.ATMA_OF_THE_MOUNTED_CHAMPION]       = {tpz.mod.VIT, 50, tpz.mod.REGEN, 20, tpz.mod.ENMITY_REDUCTION_PHYSICAL, -20},
    [tpz.ki.ATMA_OF_THE_RAZED_RUINS]            = {tpz.mod.DEX, 50, tpz.mod.CRITHITRATE, 30, tpz.mod.CRIT_DMG_INCREASE, 30},
    [tpz.ki.ATMA_OF_THE_BLUDGEONING_BRUTE]      = {tpz.mod.REGAIN, 10, tpz.mod.THUNDERRES, 50, tpz.mod.WATERRES, 50},
    [tpz.ki.ATMA_OF_THE_RAPID_REPTILIAN]        = {tpz.mod.TRIPLE_ATTACK, 5, tpz.mod.DMGBREATH, -40},
    [tpz.ki.ATMA_OF_THE_WINGED_ENIGMA]          = {tpz.mod.HASTE_GEAR, 100},
    [tpz.ki.ATMA_OF_THE_CRADLE]                 = {tpz.mod.VIT, 20, tpz.mod.DEX, 20},
    [tpz.ki.ATMA_OF_THE_UNTOUCHED]              = {tpz.mod.CHR, 20, tpz.mod.TRIPLE_ATTACK, 5},
    [tpz.ki.ATMA_OF_THE_SANGUINE_SCYTHE]        = {tpz.mod.HPP, 20, tpz.mod.CRIT_DMG_INCREASE, 30, tpz.mod.ENMITY, 20},
    [tpz.ki.ATMA_OF_THE_TUSKED_TERROR]          = {tpz.mod.FASTCAST, 20, tpz.mod.WATERATT, 20, tpz.mod.WATERACC, 20},
    [tpz.ki.ATMA_OF_THE_MINIKIN_MONSTROSITY]    = {tpz.mod.REFRESH, 10, tpz.mod.INT, 50, tpz.mod.ENMITY, -20},
    [tpz.ki.ATMA_OF_THE_WOULD_BE_KING]          = {tpz.mod.REGAIN, 100, tpz.mod.STORETP, 20, tpz.mod.TP_BONUS, 20},
    [tpz.ki.ATMA_OF_THE_BLINDING_HORN]          = {tpz.mod.CONSERVE_MP, 20, tpz.mod.THUNDERATT, 30, tpz.mod.DMGMAGIC, -20},
    [tpz.ki.ATMA_OF_THE_DEMONIC_LASH]           = {tpz.mod.ATT, 40, tpz.mod.DOUBLE_ATTACK, 10, tpz.mod.MAGIC_ABSORB, 20},
    [tpz.ki.ATMA_OF_APPARITIONS]                = {tpz.mod.EVA, 20, tpz.mod.WINDRES, 50},
    [tpz.ki.ATMA_OF_THE_SHIMMERING_SHELL]       = {tpz.mod.AGI, 20, tpz.mod.FIRERES, 50},
    [tpz.ki.ATMA_OF_THE_MURKY_MIASMA]           = {tpz.mod.DARKRES, 50, tpz.mod.STUNRES, 30},
    [tpz.ki.ATMA_OF_THE_AVARICIOUS_APE]         = {tpz.mod.HASTE_GEAR, 1, tpz.mod.JUG_LEVEL_RANGE, 2}, -- not implemented: Monster Correlation
    [tpz.ki.ATMA_OF_THE_MERCILESS_MATRIARCH]    = {tpz.mod.MACC, 50, tpz.mod.FASTCAST, 20, tpz.mod.ENMITY, -50},
    [tpz.ki.ATMA_OF_THE_BROTHER_WOLF]           = {tpz.mod.MATT, 20, tpz.mod.MDEF, 20, tpz.mod.FIRERES, 100},
    [tpz.ki.ATMA_OF_THE_EARTH_WYRM]             = {tpz.mod.EARTHRES, 100, tpz.mod.DMG, -20, tpz.mod.FORCE_EARTH_DWBONUS, 1},
    [tpz.ki.ATMA_OF_THE_ASCENDING_ONE]          = {tpz.mod.WINDRES, 100, tpz.mod.HASTE_GEAR, 500, tpz.mod.SNAP_SHOT, 5},
    [tpz.ki.ATMA_OF_THE_SCORPION_QUEEN]         = {tpz.mod.STORETP, 20, tpz.mod.CRITHITRATE, 30, tpz.mod.BINDRES, 50},
    [tpz.ki.ATMA_OF_A_THOUSAND_NEEDLES]         = {tpz.mod.HPP, 20, tpz.mod.MPP, 20, tpz.mod.DEX, 10},
    [tpz.ki.ATMA_OF_THE_BURNING_EFFIGY]         = {tpz.mod.STR, 20, tpz.mod.FORCE_FIRE_DWBONUS, 1}, -- fire based ws + 0.2 fTP] = {},
    [tpz.ki.ATMA_OF_THE_SMITING_BLOW]           = {tpz.mod.TP_BONUS, 50, tpz.mod.WSACC, 50},
    [tpz.ki.ATMA_OF_THE_LONE_WOLF]              = {tpz.mod.ATT, 20, tpz.mod.FIREATT, 30},
    [tpz.ki.ATMA_OF_THE_CRIMSON_SCALE]          = {tpz.mod.HASTE_GEAR, 300, tpz.mod.ENMITY, -20},
    [tpz.ki.ATMA_OF_THE_SCARLET_WING]           = {tpz.mod.ELEM, 10, tpz.mod.FORCE_WIND_DWBONUS, 1},
    [tpz.ki.ATMA_OF_THE_RAISED_TAIL]            = {tpz.mod.ATT, 40, tpz.mod.EVA, 40},
    [tpz.ki.ATMA_OF_THE_SAND_EMPEROR]           = {tpz.mod.ACC, 40, tpz.mod.EVA, 40},
    [tpz.ki.ATMA_OF_THE_OMNIPOTENT]             = {tpz.mod.DEX, 50, tpz.mod.HASTE_GEAR, 1000, tpz.mod.ENMITY, 20},
    [tpz.ki.ATMA_OF_THE_WAR_LION]               = {tpz.mod.DEX, 20, tpz.mod.THUNDERRES, 100, tpz.mod.FORCE_LIGHTNING_DWBONUS, 1},
    [tpz.ki.ATMA_OF_THE_FROZEN_FETTERS]         = {tpz.mod.INT, 20, tpz.mod.ICERES, 100, tpz.mod.FORCE_ICE_DWBONUS, 1},
    [tpz.ki.ATMA_OF_THE_PLAGUEBRINGER]          = {tpz.mod.REGEN, 10, tpz.mod.STORETP, 20, tpz.mod.DOUBLE_ATTACK, 7},
    [tpz.ki.ATMA_OF_THE_SHRIEKING_ONE]          = {tpz.mod.DEF, 60, tpz.mod.MDEF, 20, tpz.mod.STORETP, 20},
    [tpz.ki.ATMA_OF_THE_HOLY_MOUNTAIN]          = {tpz.mod.LIGHTRES, 100, tpz.mod.LIGHTACC, 50, tpz.mod.FORCE_LIGHT_DWBONUS, 1},
    [tpz.ki.ATMA_OF_THE_LAKE_LURKER]            = {tpz.mod.MND, 20, tpz.mod.WATERRES, 100, tpz.mod.FORCE_WATER_DWBONUS, 1},
    [tpz.ki.ATMA_OF_THE_CRUSHING_CUDGEL]        = {tpz.mod.ACC, 20, tpz.mod.SKILLCHAINDMG, 5},
    [tpz.ki.ATMA_OF_PURGATORY]                  = {tpz.mod.VIT, 40, tpz.mod.INT, 40},
    [tpz.ki.ATMA_OF_BLIGHTED_BREATH]            = {tpz.mod.SONG_SPELLCASTING_TIME, 40, tpz.mod.LIGHTACC, 40},
    [tpz.ki.ATMA_OF_THE_PERSISTENT_PREDATOR]    = {tpz.mod.STORETP, 40, tpz.mod.TP_BONUS, 10},
    [tpz.ki.ATMA_OF_THE_STONE_GOD]              = {tpz.mod.SUBTLE_BLOW, 40, tpz.mod.ENMITY, 40},
    [tpz.ki.ATMA_OF_THE_SUN_EATER]              = {tpz.mod.STORETP, 40, tpz.mod.TP_BONUS, 40},
    [tpz.ki.ATMA_OF_THE_DESPOT]                 = {tpz.mod.CHR, 50, tpz.mod.MAGIC_ABSORB, 15, tpz.mod.TP_BONUS, 40},
    [tpz.ki.ATMA_OF_THE_SOLITARY_ONE]           = {tpz.mod.TRIPLE_ATTACK, 7, tpz.mod.DMGBREATH, -25, tpz.mod.ZANSHIN, 10},
    [tpz.ki.ATMA_OF_THE_WINGED_GLOOM]           = {tpz.mod.DMG, -25, tpz.mod.REGEN, 2},
    [tpz.ki.ATMA_OF_THE_SEA_DAUGHTER]           = {tpz.mod.REGAIN, 50, tpz.mod.HASTE_GEAR, -1500, tpz.mod.REGEN, 30},
    [tpz.ki.ATMA_OF_THE_HATEFUL_STREAM]         = {tpz.mod.MACC, 5, tpz.mod.ELEMENTAL, 10, tpz.mod.ALL_WSDMG_FIRST_HIT, 12}, -- No easy way to do this ATMA. No way I am doing bit crap in onTick for it..
    [tpz.ki.ATMA_OF_THE_FOE_FLAYER]             = {tpz.mod.MPP, 20, tpz.mod.REFRESH, 20, tpz.mod.FASTCAST, 20, tpz.mod.MACC, 50},
    [tpz.ki.ATMA_OF_THE_ENDLESS_NIGHTMARE]      = {tpz.mod.MND, 20, tpz.mod.DARKRES, 100, tpz.mod.FORCE_DARK_DWBONUS, 1},
    [tpz.ki.ATMA_OF_THE_SUNDERING_SLASH]        = {tpz.mod.ATT, 20, tpz.mod.REGAIN, 30},
    [tpz.ki.ATMA_OF_ENTWINED_SERPENTS]          = {tpz.mod.ATT, 20, tpz.mod.DOUBLE_ATTACK, 15},
    [tpz.ki.ATMA_OF_THE_HORNED_BEAST]           = {tpz.mod.ACC, 60, tpz.mod.PETRIFYRES, 50},
    [tpz.ki.ATMA_OF_AQUATIC_ARDOR]              = {tpz.mod.ABSORB_DMG_CHANCE, 6, tpz.mod.MAGIC_ABSORB, 6},
    [tpz.ki.ATMA_OF_THE_FALLEN_ONE]             = {tpz.mod.INT, 30, tpz.mod.MND, 30},
    [tpz.ki.ATMA_OF_FIRES_AND_FLARES]           = {tpz.mod.AGI, 20, tpz.mod.RATT, 40},
    [tpz.ki.ATMA_OF_THE_APOCALYPSE]             = {tpz.mod.TRIPLE_ATTACK, 15, tpz.mod.RERAISE_III, 1, tpz.mod.QUICK_MAGIC, 10},
    
    -- GROUP 2
    [tpz.ki.ATMA_OF_THE_HEIR]                   = {tpz.mod.MPP, 5, tpz.mod.REGAIN, 5, tpz.mod.LIGHTACC, 10},
    [tpz.ki.ATMA_OF_THE_HERO]                   = {tpz.mod.STR, 15, tpz.mod.CRIT_DMG_INCREASE, 15, tpz.mod.REGEN, 5},
    [tpz.ki.ATMA_OF_THE_FULL_MOON]              = {tpz.mod.INT, 10, tpz.mod.MATT, 10, tpz.mod.REFRESH, 5},
    [tpz.ki.ATMA_OF_ILLUSIONS]                  = {tpz.mod.MND, 10, tpz.mod.MAG_BURST_BONUS, 10, tpz.mod.DAY_NUKE_BONUS, 10},
    [tpz.ki.ATMA_OF_THE_BANISHER]               = {tpz.mod.MPP, 5, tpz.mod.DARK_AFFINITY_DMG, 1, tpz.mod.DARKACC, 10},
    [tpz.ki.ATMA_OF_THE_SELLSWORD]              = {tpz.mod.STR, 20, tpz.mod.DMGMAGIC, 14, tpz.mod.LIGHT_AFFINITY_DMG, 1},
    [tpz.ki.ATMA_OF_A_FUTURE_FABULOUS]          = {tpz.mod.HASTE_GEAR, 1, tpz.mod.HASTE_MAGIC, 2, tpz.mod.MDEF, 50},
    [tpz.ki.ATMA_OF_CAMARADERIE]                = {tpz.mod.STORETP, 10, tpz.mod.CURE_CAST_TIME, 15, tpz.mod.SONG_RECAST_DELAY, 10},
    [tpz.ki.ATMA_OF_THE_TRUTHSEEKER]            = {tpz.mod.DEX, 20, tpz.mod.DARKDEF, 50, tpz.mod.WSACC, 10},
    [tpz.ki.ATMA_OF_THE_AZURE_SKY]              = {tpz.mod.MPP, 5, tpz.mod.MAGIC_CRITHITRATE, 15, tpz.mod.BP_DELAY, 10},
    [tpz.ki.ATMA_OF_ECHOES]                     = {tpz.mod.VIT, 20, tpz.mod.MACC, 10, tpz.mod.ALL_WSDMG_FIRST_HIT, 5},
    [tpz.ki.ATMA_OF_DREAD]                      = {tpz.mod.MEVA, 5, tpz.mod.TREASURE_HUNTER, 1, tpz.mod.SAMBA_DURATION, 10},
    [tpz.ki.ATMA_OF_AMBITION]                   = {tpz.mod.REFRESH, 5, tpz.mod.HASTE_MAGIC, 5, tpz.mod.MOVE, 12},
    [tpz.ki.ATMA_OF_THE_BEAST_KING]             = {tpz.mod.ATT, 20, tpz.mod.VIT, 20, tpz.mod.BEAST_KILLER, 10},
    [tpz.ki.ATMA_OF_THE_KIRIN]                  = {tpz.mod.AGI, 40, tpz.mod.INT, 40, tpz.mod.MACC, 25},
    [tpz.ki.ATMA_OF_HELLS_GUARDIAN]             = {tpz.mod.MATT, 50, tpz.mod.ZANSHIN, 100, tpz.mod.DEMON_KILLER, 25},
    [tpz.ki.ATMA_OF_LUMINOUS_WINGS]             = {tpz.mod.SUBTLE_BLOW, 50, tpz.mod.ENMITY_DOWN, 25, tpz.mod.ABSORB_DMG_CHANCE, 10},
    [tpz.ki.ATMA_OF_THE_DRAGON_RIDER]           = {tpz.mod.MATT, 20, tpz.mod.DRAGON_KILLER, 10, tpz.mod.WYVERN_BREATH, 50},
    [tpz.ki.ATMA_OF_THE_IMPENETRABLE]           = {tpz.mod.DMGBREATH, 25, tpz.mod.LIZARD_KILLER, 10, tpz.mod.REGEN, 15},
    [tpz.ki.ATMA_OF_ALPHA_AND_OMEGA]            = {tpz.mod.MAX_HP_DOWN, 25, tpz.mod.ATT, 50, tpz.mod.TRIPLE_ATTACK, 10},
    [tpz.ki.ATMA_OF_THE_ULTIMATE]               = {tpz.mod.MAX_MP_DOWN, 25, tpz.mod.MATT, 50, tpz.mod.MACC, 50},
    [tpz.ki.ATMA_OF_THE_HYBRID_BEAST]           = {tpz.mod.DOUBLE_ATTACK, 5, tpz.mod.TRIPLE_ATTACK, 4, tpz.mod.ARCANA_KILLER, 10},
    [tpz.ki.ATMA_OF_THE_DARK_DEPTHS]            = {tpz.mod.AGI, 20, tpz.mod.EVA, 20, tpz.mod.CRITHITRATE, 20},
    [tpz.ki.ATMA_OF_THE_ZENITH]                 = {tpz.mod.HPP, 10, tpz.mod.MPP, 10, tpz.mod.DMG, 10},
    [tpz.ki.ATMA_OF_PERFECT_ATTENDANCE]         = {tpz.mod.REGEN, 10, tpz.mod.REFRESH, 5, tpz.mod.REGAIN, 1},
    [tpz.ki.ATMA_OF_THE_RESCUER]                = {tpz.mod.MDEF, 20, tpz.mod.HASTE_MAGIC, 5, tpz.mod.CURE_POTENCY, 10, tpz.mod.WALTZ_POTENTCY, 10},
    [tpz.ki.ATMA_OF_NIGHTMARES]                 = {tpz.mod.HASTE_GEAR, 5, tpz.mod.SOULEATER_EFFECT, 30, tpz.mod.MEVA, 10},
    [tpz.ki.ATMA_OF_THE_EINHERJAR]              = {tpz.mod.STR, 20, tpz.mod.MND, 20, tpz.mod.DEATHRES, 50},
    [tpz.ki.ATMA_OF_THE_ILLUMINATOR]            = {tpz.mod.VIT, 20, tpz.mod.DUAL_WIELD, 1, tpz.mod.SMITE, 40},
    [tpz.ki.ATMA_OF_THE_BUSHIN]                 = {tpz.mod.HP, 200, tpz.mod.MP, 200, tpz.mod.SAVETP, 10},
    [tpz.ki.ATMA_OF_THE_ACE_ANGLER]             = {tpz.mod.REGEN, 5, tpz.mod.REFRESH, 5, tpz.mod.SLEEPRES, 5, tpz.mod.POISONRES, 5, tpz.mod.PARALYZERES, 5, tpz.mod.BLINDRES, 5, tpz.mod.SILENCERES, 5, tpz.mod.VIRUSRES, 5, tpz.mod.PETRIFYRES, 5, tpz.mod.BINDRES, 5, tpz.mod.CURSERES, 5, tpz.mod.GRAVITYRES, 5, tpz.mod.SLOWRES, 5, tpz.mod.STUNRES, 5, tpz.mod.CHARMRES, 5, tpz.mod.AMNESIARES, 5, tpz.mod.LULLABYRES, 5, tpz.mod.DEATHRES, 5},
    [tpz.ki.ATMA_OF_THE_MASTER_CRAFTER]         = {tpz.mod.STUNRES, 25, tpz.mod.STR, 10, tpz.mod.DEX, 10, tpz.mod.VIT, 10, tpz.mod.INT, 10, tpz.mod.MND, 10, tpz.mod.CHR, 10, tpz.mod.MOVE, 12},
    [tpz.ki.ATMA_OF_INGENUITY]                  = {tpz.mod.MAX_HP_DOWN, 150, tpz.mod.MP, 150, tpz.mod.MATT, 20},
    [tpz.ki.ATMA_OF_THE_GRIFFONS_CLAW]          = {tpz.mod.GSWORD, 10, tpz.mod.SCYTHE, 10, tpz.mod.SMITE, 50},
    [tpz.ki.ATMA_OF_THE_FETCHING_FOOTPAD]       = {tpz.mod.MATT, 20, tpz.mod.MAGIC_CRIT_DMG_INCREASE, 10, tpz.mod.CONSERVE_MP, 36},
    [tpz.ki.ATMA_OF_UNDYING_LOYALTY]            = {tpz.mod.CHR, 20, tpz.mod.ACC, 30, tpz.mod.MACC, 40},
    [tpz.ki.ATMA_OF_THE_ROYAL_LINEAGE]          = {tpz.mod.HPP, 10, tpz.mod.ACC, 15, tpz.mod.GILFINDER, 20},
    [tpz.ki.ATMA_OF_THE_SHATTERING_STAR]        = {tpz.mod.VIT, 25, tpz.mod.AGI, 15, tpz.mod.REGAIN, 1},
    [tpz.ki.ATMA_OF_THE_COBRA_COMMANDER]        = {tpz.mod.DOUBLE_ATTACK, 10, tpz.mod.HASTE_GEAR, 10},
    [tpz.ki.ATMA_OF_ROARING_LAUGHTER]           = {tpz.mod.STR, 50, tpz.mod.EVA, -50, tpz.mod.COUNTER, 10},
    [tpz.ki.ATMA_OF_THE_DARK_BLADE]             = {tpz.mod.HPP, 40, tpz.mod.STR, 30, tpz.mod.UDMGPHYS, 20, tpz.mod.UDMGBREATH, 20, tpz.mod.UDMGMAGIC, 20, tpz.mod.UDMGRANGE, 20},
    [tpz.ki.ATMA_OF_THE_DUCAL_GUARD]            = {tpz.mod.GUARD, 50, tpz.mod.DMG, 25, tpz.mod.MOVE, 25},
    [tpz.ki.ATMA_OF_HARMONY]                    = {tpz.mod.CURE_POTENCY, 10, tpz.mod.ENHANCE, 10, tpz.mod.WALTZ_POTENTCY, 10},
    [tpz.ki.ATMA_OF_REVELATIONS]                = {tpz.mod.MPP, 10, tpz.mod.REFRESH, 5, tpz.mod.HASTE_MAGIC, 7},
    [tpz.ki.ATMA_OF_THE_SAVIOR]                 = {tpz.mod.STR, 30, tpz.mod.DEX, 30, tpz.mod.VIT, 30, tpz.mod.INT, 30, tpz.mod.MND, 30, tpz.mod.CHR, 30, tpz.mod.SLEEPRES, 25, tpz.mod.POISONRES, 25, tpz.mod.PARALYZERES, 25, tpz.mod.BLINDRES, 25, tpz.mod.SILENCERES, 25, tpz.mod.VIRUSRES, 25, tpz.mod.PETRIFYRES, 25, tpz.mod.BINDRES, 25, tpz.mod.CURSERES, 25, tpz.mod.GRAVITYRES, 25, tpz.mod.SLOWRES, 25, tpz.mod.STUNRES, 25, tpz.mod.CHARMRES, 25, tpz.mod.AMNESIARES, 25, tpz.mod.LULLABYRES, 25, tpz.mod.DEATHRES, 25, tpz.mod.ABSORB_DMG_CHANCE, 10}
	}

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target, effect)
	for i = tpz.ki.ATMA_OF_THE_LION, tpz.ki.ATMA_OF_THE_SAVIOR do
		if (target:hasKeyItem(i)) then
			local atmaPower
			local plvl = target:getMainLvl()
			if (plvl > 9 and plvl < 51) then
				atmaPower = plvl*.01
			elseif (plvl > 50 and plvl < 75) then
				atmaPower = .5 + ((plvl-50)*.02)
			elseif (plvl > 74) then
				atmaPower = 1
			else
				atmaPower = 0
			end
				
		    target:setCharVar("lastAtmaPower", atmaPower*100) -- DUH
			if atmaMods[i] ~= nil then
				local mods = atmaMods[i]
				for j = 1, #mods, 2 do
					local modValue = math.floor(atmaMods[i][j+1]*atmaPower)
					target:addMod(atmaMods[i][j], modValue)
					-- print(string.format("Added mod: %s %d to %s", atmaMods[i][j], modValue, target))
				end
			end
		end
	end
end

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target, effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target, effect)
	local atmaPower = target:getCharVar("lastAtmaPower")*.01 -- YUP
	for i = tpz.ki.ATMA_OF_THE_LION, tpz.ki.ATMA_OF_THE_SAVIOR do
		if (target:hasKeyItem(i) and atmaMods[i] ~= nil) then
			local mods = atmaMods[i]
			for j = 1, #mods, 2 do
				local modValue = math.floor(atmaMods[i][j+1]*atmaPower)
				target:delMod(atmaMods[i][j], modValue)
				-- print(string.format("Del mod: %s %d to %s", atmaMods[i][j], modValue, target))
			end
		end
	end
end;
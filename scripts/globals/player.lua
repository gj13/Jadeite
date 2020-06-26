require("scripts/globals/gear_sets")
require("scripts/globals/keyitems")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/teleports")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------

local startingRaceInfo =
{
    [tpz.race.HUME_M]   = {gear = {body = 12631, hand = 12754, leg = 12883, feet = 13005}, homeNation = tpz.nation.BASTOK},
    [tpz.race.HUME_F]   = {gear = {body = 12632, hand = 12760, leg = 12884, feet = 13010}, homeNation = tpz.nation.BASTOK},
    [tpz.race.ELVAAN_M] = {gear = {body = 12633, hand = 12755, leg = 12885, feet = 13006}, homeNation = tpz.nation.SANDORIA},
    [tpz.race.ELVAAN_F] = {gear = {body = 12634, hand = 12759, leg = 12889, feet = 13011}, homeNation = tpz.nation.SANDORIA},
    [tpz.race.TARU_M]   = {gear = {body = 12635, hand = 12756, leg = 12886, feet = 13007}, homeNation = tpz.nation.WINDURST},
    [tpz.race.TARU_F]   = {gear = {body = 12635, hand = 12756, leg = 12886, feet = 13007}, homeNation = tpz.nation.WINDURST},
    [tpz.race.MITHRA]   = {gear = {body = 12636, hand = 12757, leg = 12887, feet = 13008}, homeNation = tpz.nation.WINDURST},
    [tpz.race.GALKA]    = {gear = {body = 12637, hand = 12758, leg = 12888, feet = 13009}, homeNation = tpz.nation.BASTOK},
}

local startingNationInfo =
{
    [tpz.nation.SANDORIA] = {ring = 13495, map = tpz.ki.MAP_OF_THE_SAN_DORIA_AREA},
    [tpz.nation.BASTOK]   = {ring = 13497, map = tpz.ki.MAP_OF_THE_BASTOK_AREA},
    [tpz.nation.WINDURST] = {ring = 13496, map = tpz.ki.MAP_OF_THE_WINDURST_AREA},
}

local startingJobGear =
{
    [tpz.job.WAR] = {16534},       -- onion sword
    [tpz.job.MNK] = {13184},       -- white belt
    [tpz.job.WHM] = {17068, 4608}, -- onion rod, scroll of cure
    [tpz.job.BLM] = {17104, 4607}, -- onion staff, scroll of stone
    [tpz.job.RDM] = {16482, 4606}, -- onion dagger, scroll of dia
    [tpz.job.THF] = {16483},       -- onion knife
}

local travelType = tpz.teleport.type.HOMEPOINT
local HPs =
{
    -- [Index]= [1]group(if to/from both same group, then no cost) [2]fee multiplier [3]dest{x,y,z,rot,zone}
    [  0] = {group = 1, fee = 1, dest = {  -85.554,       1, -64.554,  45, 230}}, -- Southern San d'Oria #1
    [  1] = {group = 1, fee = 1, dest = {     44.1,       2,   -34.5, 170, 230}}, -- Southern San d'Oria #2
    [  2] = {group = 1, fee = 1, dest = {    140.5,      -2,     121,   0, 230}}, -- Southern San d'Oria #3
    [  3] = {group = 1, fee = 1, dest = {     -178,       4,      71,   0, 231}}, -- Northern San d'Oria #1
    [  4] = {group = 1, fee = 1, dest = {       10,    -0.2,      95,   0, 231}}, -- Northern San d'Oria #2
    [  5] = {group = 1, fee = 1, dest = {       70,    -0.2,      10,   0, 231}}, -- Northern San d'Oria #3
    [  6] = {group = 1, fee = 1, dest = {      -38,      -4,     -63,   0, 232}}, -- Port San d'Oria #1
    [  7] = {group = 1, fee = 1, dest = {       48,     -12,    -105,   0, 232}}, -- Port San d'Oria #2
    [  8] = {group = 1, fee = 1, dest = {       -6,     -13,    -150,   0, 232}}, -- Port San d'Oria #3
    [  9] = {group = 2, fee = 1, dest = {       39,       0,     -43,   0, 234}}, -- Bastok Mines #1
    [ 10] = {group = 2, fee = 1, dest = {      118,       1,     -58,   0, 234}}, -- Bastok Mines #2
    [ 11] = {group = 2, fee = 1, dest = {     -342,     -10,    -154,   0, 235}}, -- Bastok Markets #1
    [ 12] = {group = 2, fee = 1, dest = {     -328,     -12,     -33,   0, 235}}, -- Bastok Markets #2
    [ 13] = {group = 2, fee = 1, dest = {     -189,      -8,      26,   0, 235}}, -- Bastok Markets #3
    [ 14] = {group = 2, fee = 1, dest = {      124,       8,       7,   0, 236}}, -- Port Bastok #1
    [ 15] = {group = 2, fee = 1, dest = {       42,     8.5,    -244,   0, 236}}, -- Port Bastok #2
    [ 16] = {group = 2, fee = 1, dest = {       46,     -14,     -19,   0, 237}}, -- Metalworks #1
    [ 17] = {group = 3, fee = 1, dest = {      -32,      -5,     132,   0, 238}}, -- Windurst Waters #1
    [ 18] = {group = 3, fee = 1, dest = {    138.5,       0,     -14,   0, 238}}, -- Windurst Waters #2
    [ 19] = {group = 3, fee = 1, dest = {      -72,      -5,     125,   0, 239}}, -- Windurst Walls #1
    [ 20] = {group = 3, fee = 1, dest = {     -212,       0,     -99,   0, 239}}, -- Windurst Walls #2
    [ 21] = {group = 3, fee = 1, dest = {       31,    -6.5,     -40,   0, 239}}, -- Windurst Walls #3
    [ 22] = {group = 3, fee = 1, dest = {     -188,      -4,     101,   0, 240}}, -- Port Windurst #1
    [ 23] = {group = 3, fee = 1, dest = {     -207,      -8,     210,   0, 240}}, -- Port Windurst #2
    [ 24] = {group = 3, fee = 1, dest = {      180,     -12,     226,   0, 240}}, -- Port Windurst #3
    [ 25] = {group = 3, fee = 1, dest = {        9,      -2,       0,   0, 241}}, -- Windurst Woods #1
    [ 26] = {group = 3, fee = 1, dest = {      107,      -5,     -56,   0, 241}}, -- Windurst Woods #2
    [ 27] = {group = 3, fee = 1, dest = {      -92,      -5,      62,   0, 241}}, -- Windurst Woods #3
    [ 28] = {group = 3, fee = 1, dest = {       74,      -7,    -139,   0, 241}}, -- Windurst Woods #4
    [ 29] = {group = 4, fee = 1, dest = {       -6,       3,       0,   0, 243}}, -- Ru'Lude Gardens #1
    [ 30] = {group = 4, fee = 1, dest = {       53,       9,     -57,   0, 243}}, -- Ru'Lude Gardens #2
    [ 31] = {group = 4, fee = 1, dest = {      -67,       6,     -25,   1, 243}}, -- Ru'Lude Gardens #3
    [ 32] = {group = 4, fee = 1, dest = {      -99,       0,     167,   0, 244}}, -- Upper Jeuno #1
    [ 33] = {group = 4, fee = 1, dest = {       32,      -1,     -44,   0, 244}}, -- Upper Jeuno #2
    [ 34] = {group = 4, fee = 1, dest = {      -52,       1,      16,   0, 244}}, -- Upper Jeuno #3
    [ 35] = {group = 4, fee = 1, dest = {      -99,       0,    -183,   0, 245}}, -- Lower Jeuno #1
    [ 36] = {group = 4, fee = 1, dest = {       18,      -1,      54,   0, 245}}, -- Lower Jeuno #2
    [ 37] = {group = 4, fee = 1, dest = {       37,       0,       9,   0, 246}}, -- Port Jeuno #1
    [ 38] = {group = 4, fee = 1, dest = {     -155,      -1,      -4,   0, 246}}, -- Port Jeuno #2
    [ 39] = {group = 0, fee = 1, dest = {       78,     -13,     -94,   0, 250}}, -- Kazham #1
    [ 40] = {group = 0, fee = 1, dest = {      -13,     -15,      87,   0, 249}}, -- Mhaura #1
    [ 41] = {group = 8, fee = 1, dest = {      -27,       0,     -47,   0, 252}}, -- Norg #1
    [ 42] = {group = 9, fee = 1, dest = {      -29,       0,     -76,   0, 247}}, -- Rabao #1
    [ 43] = {group = 0, fee = 1, dest = {       36,     -11,      35,   0, 248}}, -- Selbina #1
    [ 44] = {group = 5, fee = 1, dest = {      -84,       4,     -32, 128, 256}}, -- Western Adoulin #1
    [ 45] = {group = 5, fee = 1, dest = {      -51,       0,      59, 128, 257}}, -- Eastern Adoulin #1
    [ 46] = {group = 0, fee = 2, dest = {     -107,       3,     295, 128, 261}}, -- Ceizak Battlegrounds #1
    [ 47] = {group = 0, fee = 2, dest = {     -193,    -0.5,    -252, 128, 262}}, -- Foret de Hennetiel #1
    [ 48] = {group = 0, fee = 2, dest = {     -415,   -63.2,     409, 106, 265}}, -- Morimar Basalt Fields #1
    [ 49] = {group = 0, fee = 2, dest = {     -420,       0,     -62,  64, 263}}, -- Yorcia Weald #1
    [ 50] = {group = 0, fee = 2, dest = {      -23,       0,     174,   0, 266}}, -- Marjami Ravine #1
    [ 51] = {group = 0, fee = 2, dest = {      210,  20.299,     315, 192, 267}}, -- Kamihr Drifts #1
    [ 52] = {group = 0, fee = 2, dest = {      434,     -40,     171,   0, 142}}, -- Yughott Grotto #1
    [ 53] = {group = 0, fee = 2, dest = {      109,     -38,    -147,   0, 143}}, -- Palborough Mines #1
    [ 54] = {group = 0, fee = 2, dest = {     -132,      -3,    -303,   0, 145}}, -- Giddeus #1
    [ 55] = {group = 0, fee = 2, dest = {      243,     -24,      62,   0, 204}}, -- Fei'Yin #1
    [ 56] = {group = 0, fee = 2, dest = {     -984,      17,    -289,   0, 208}}, -- Quicksand Caves #1
    [ 57] = {group = 0, fee = 2, dest = {      -80,      46,      62,   0, 160}}, -- Den of Rancor #1
    [ 58] = {group = 0, fee = 2, dest = {     -554,     -70,      66,   0, 162}}, -- Castle Zvahl Keep #1
    [ 59] = {group = 0, fee = 2, dest = {        5,     -42,     526,   0, 130}}, -- Ru'Aun Gardens #1
    [ 60] = {group = 0, fee = 2, dest = {     -499,     -42,     167,   0, 130}}, -- Ru'Aun Gardens #2
    [ 61] = {group = 0, fee = 2, dest = {     -312,     -42,    -422,   0, 130}}, -- Ru'Aun Gardens #3
    [ 62] = {group = 0, fee = 2, dest = {      500,     -42,     158,   0, 130}}, -- Ru'Aun Gardens #4
    [ 63] = {group = 0, fee = 2, dest = {      305,     -42,    -427,   0, 130}}, -- Ru'Aun Gardens #5
    [ 64] = {group = 6, fee = 1, dest = {       -1,     -28,     107,   0,  26}}, -- Tavnazian Safehold #1
    [ 65] = {group = 7, fee = 1, dest = {      -21,       0,     -21,   0,  50}}, -- Aht Urhgan Whitegate #1
    [ 66] = {group = 0, fee = 1, dest = {      -20,       0,     -25,   0,  53}}, -- Nashmau #1
    [ 67] = {group = 0, fee = 1, dest = {        0,       0,       0,   0,  48}}, -- Al Zahbi #1 (DOESN'T CURRENTLY EXIST)
    [ 68] = {group = 0, fee = 1, dest = {      -85,       1,     -66,   0,  80}}, -- Southern San d'Oria [ S] #1
    [ 69] = {group = 0, fee = 1, dest = {     -293,     -10,    -102,   0,  87}}, -- Bastok Markets [S] #1
    [ 70] = {group = 0, fee = 1, dest = {      -32,      -5,     131,   0,  94}}, -- Windurst Waters [S] #1
    [ 71] = {group = 0, fee = 2, dest = {     -365,  -176.5,     -36,   0, 158}}, -- Upper Delkfutt's Tower #1
    [ 72] = {group = 0, fee = 2, dest = {      -13,      48,      61,   0, 178}}, -- The Shrine of Ru'Avitau #1
    [ 73] = {group = 0, fee = 2, dest = {     -520,     -18,     505, 127,  29}}, -- Riverne - Site #B01 #1
    [ 74] = {group = 0, fee = 2, dest = {      -98,     -10,    -493, 192,  52}}, -- Bhaflau Thickets #1
    [ 75] = {group = 0, fee = 2, dest = {     -449,      13,    -497,   0,  79}}, -- Caedarva Mire #1
    [ 76] = {group = 0, fee = 2, dest = {       64,    -196,     181,   0,   5}}, -- Uleguerand Range #1
    [ 77] = {group = 0, fee = 2, dest = {      380,      23,     -62,   0,   5}}, -- Uleguerand Range #2
    [ 78] = {group = 0, fee = 2, dest = {      424,     -32,     221,   0,   5}}, -- Uleguerand Range #3
    [ 79] = {group = 0, fee = 2, dest = {       64,     -96,     461,   0,   5}}, -- Uleguerand Range #4
    [ 80] = {group = 0, fee = 2, dest = {     -220,      -1,     -62,   0,   5}}, -- Uleguerand Range #5
    [ 81] = {group = 0, fee = 2, dest = {     -200,     -10,     342,   0,   7}}, -- Attohwa Chasm #1
    [ 82] = {group = 0, fee = 2, dest = {      -58,      40,      14,  64,   9}}, -- Pso'Xja #1
    [ 83] = {group = 0, fee = 2, dest = {      445,      27,     -22,   0,  12}}, -- Newton Movalpolos #1
    [ 84] = {group = 0, fee = 2, dest = {      189,       0,     362,   0,  30}}, -- Riveren - Site #A01 #1
    [ 85] = {group = 0, fee = 2, dest = {        7,       0,     709, 192,  33}}, -- Al'Taieu #1
    [ 86] = {group = 0, fee = 2, dest = {     -532,       0,     447, 128,  33}}, -- Al'Taieu #2
    [ 87] = {group = 0, fee = 2, dest = {      569,       0,     410, 192,  33}}, -- Al'Taieu #3
    [ 88] = {group = 0, fee = 2, dest = {      -12,       0,    -288, 192,  34}}, -- Grand Palace of Hu'Xzoi #1
    [ 89] = {group = 0, fee = 2, dest = {     -426,       0,     368, 224,  35}}, -- The Garden of Ru'Hmet #1
    [ 90] = {group = 0, fee = 2, dest = { -540.844,  -4.000,  70.809,  74,  61}}, -- Mount Zhayolm #1
    [ 91] = {group = 0, fee = 2, dest = {     -303,      -8,     526,   0, 113}}, -- Cape Terrigan #1
    [ 92] = {group = 0, fee = 2, dest = {       88,     -15,    -217,   0, 153}}, -- The Boyahda Tree #1
    [ 93] = {group = 0, fee = 2, dest = {      182,      34,     -62, 223, 160}}, -- Den of Rancor #2
    [ 94] = {group = 0, fee = 2, dest = {      102,       0,     269, 191, 204}}, -- Fei'Yin #2
    [ 95] = {group = 0, fee = 2, dest = {      -63,      50,      81, 192, 205}}, -- Ifrit's Cauldron #1
    [ 96] = {group = 0, fee = 2, dest = {      573,       9,    -500,   0, 208}}, -- Quicksand Caves #2
    [ 97] = {group = 1, fee = 1, dest = {     -165,      -1,      12,  65, 230}}, -- Southern San d'Oria #4
    [ 98] = {group = 1, fee = 1, dest = {     -132,      12,     194, 170, 231}}, -- Northern San d'Oria #4
    [ 99] = {group = 2, fee = 1, dest = {       87,       7,       1,   0, 234}}, -- Bastok Mines #3
    [100] = {group = 2, fee = 1, dest = {     -192,      -6,     -69,   0, 235}}, -- Bastok Markets #4
    [101] = {group = 2, fee = 1, dest = {     -127,      -6,       8, 206, 236}}, -- Port Bastok #3
    [102] = {group = 2, fee = 1, dest = {      -76,       2,       3, 124, 237}}, -- Metalworks #2
    [103] = {group = 3, fee = 1, dest = {        5,      -4,    -175, 130, 238}}, -- Windurst Waters #3
    [104] = {group = 8, fee = 1, dest = {      -65,      -5,      54, 127, 252}}, -- Norg #2
    [105] = {group = 9, fee = 1, dest = {      -21,       8,     110,  64, 247}}, -- Rabao #2
    [106] = {group = 7, fee = 1, dest = {      130,       0,     -16,   0,  50}}, -- Aht Urhgan Whitegate #2
    [107] = {group = 7, fee = 1, dest = {     -108,      -6,     108, 192,  50}}, -- Aht Urhgan Whitegate #3
    [108] = {group = 7, fee = 1, dest = {      -99,       0,     -68,   0,  50}}, -- Aht Urhgan Whitegate #4
    [109] = {group = 5, fee = 1, dest = {       32,       0,    -164,  32, 256}}, -- Western Adoulin #2
    [110] = {group = 5, fee = 1, dest = {      -51,       0,     -96,  96, 257}}, -- Eastern Adoulin #2
    [111] = {group = 0, fee = 2, dest = {      223,     -13,    -254,   0, 137}}, -- Xarcabard [S] #1
    [112] = {group = 0, fee = 2, dest = {    5.539,  -0.434,   8.133,  73, 281}}, -- Leafallia #1
    [113] = {group = 0, fee = 2, dest = {     -554,     -70,      66, 128, 155}}, -- Castle Zvahl Keep [S] #1
    [114] = {group = 0, fee = 1, dest = {     -212,     -21,      93,  64, 126}}, -- Qufim Island #1
    [115] = {group = 0, fee = 1, dest = {   -257.5,      24,      82, 192, 169}}, -- Toraimorai Canal #1
    [116] = {group = 0, fee = 2, dest = {      757,     120,    17.5, 128, 276}}, -- Ra'Kaznar Inner Court #1
    [117] = {group = 0, fee = 2, dest = {      -65,   -17.5,     563, 224,  25}}, -- Misareaux Coast #1
    [118] = {group = 3, fee = 1, dest = {      -92,      -2,      54, 155, 238}}, -- Windurst Waters #4
    [119] = {group = 3, fee = 1, dest = {    -43.5,       0,    -145,   0, 241}}, -- Windurst Woods #5
    [120] = {group = 6, fee = 1, dest = {       14,   -9.96,      -5,   0,  26}}, -- Tavnazian Safehold #2
    [121] = {group = 6, fee = 1, dest = {    73.59, -36.149,   38.87,   0,  26}}  -- Tavnazian Safehold #3
}

-----------------------------------
-- local functions
-----------------------------------

local function CharCreate(player)
    local race = player:getRace()
    local raceInfo = startingRaceInfo[race]
    local nation = player:getNation()
    local nationInfo = startingNationInfo[nation]

    -- add race-specific starting gear
    for _, v in pairs(raceInfo.gear) do
        if not player:hasItem(v) then
            player:addItem(v)
            player:equipItem(v)
        end
    end

    -- add job-specific starting gear
    for _, v in pairs(startingJobGear[player:getMainJob()]) do
        if not player:hasItem(v) then
            player:addItem(v)
        end
    end

    -- add nation-specific map
    player:addKeyItem(nationInfo.map)

    -- add nation- and race-specific ring
    if nation == raceInfo.homeNation and not player:hasItem(nationInfo.ring) then
        player:addItem(nationInfo.ring)
    end

    -- unlock advanced jobs
    if ADVANCED_JOB_LEVEL == 0 then
        for i = tpz.job.PLD, tpz.job.SCH do
            player:unlockJob(i)
        end
    player:addSpell(296);
	end

    -- unlock subjob
    if SUBJOB_QUEST_LEVEL == 0 then
        player:unlockJob(0)
    end

    -- give all maps
    if ALL_MAPS == 1 then
        for i = tpz.ki.MAP_OF_THE_SAN_DORIA_AREA, tpz.ki.MAP_OF_DIO_ABDHALJS_GHELSBA do
            player:addKeyItem(i)
        end
        for i = tpz.ki.MAP_OF_AL_ZAHBI, tpz.ki.MAP_OF_OUTER_RAKAZNAR do
            player:addKeyItem(i)
        end
        for i = tpz.ki.MAP_OF_RALA_WATERWAYS_U, tpz.ki.MAP_OF_OUTER_RAKAZNAR_U do
            player:addKeyItem(i)
        end
        for i = tpz.ki.MAP_OF_ESCHA_ZITAH, tpz.ki.MAP_OF_REISENJIMA do
            player:addKeyItem(i)
        end
    end

    -- set initial level cap
    if INITIAL_LEVEL_CAP ~= 50 then
        player:levelCap(INITIAL_LEVEL_CAP)
    end

    -- increase starting inventory
    if START_INVENTORY > 30 then
        player:changeContainerSize(tpz.inv.INVENTORY, START_INVENTORY - 30)
        player:changeContainerSize(tpz.inv.MOGSATCHEL, START_INVENTORY - 30)
    end

    --[[
        For some intermittent reason m_ZoneList ends up empty on characters, which is
        possibly also why they lose key items.  When that happens, CharCreate will be run and
        they end up losing their gil to the code below.  Added a conditional to hopefully
        prevent that until the bug is fixed.  Used the if instead of addGil to prevent abuse
        on servers with very high values of START_GIL, I guess.
    --]]

    if player:getGil() < START_GIL then
       player:setGil(START_GIL)
    end

    player:addItem(536) -- adventurer coupon
    player:addTitle(tpz.title.NEW_ADVENTURER)
    player:setCharVar("MoghouseExplication", 1) -- needs Moghouse intro
    player:setCharVar("spokeKindlix", 1) -- Kindlix introduction
    player:setCharVar("spokePyropox", 1) -- Pyropox introduction
    player:setCharVar("TutorialProgress", 1) -- Has not started tutorial
    player:setNewPlayer(true) -- apply new player flag
	
	-- add all homepoints, if enabled
	if (HOMEPOINT_TELEPORT == 1) then
		for index, v in ipairs(HPs) do
			local hpBit  = index % 32
			local hpSet  = math.floor(index / 32)
			if not player:hasTeleport(travelType, hpBit, hpSet) then
				player:addTeleport(travelType, hpBit, hpSet)
			end
		end
	end
end

-----------------------------------
-- public functions
-----------------------------------

-- called by core after a player logs into the server or zones
function onGameIn(player, firstLogin, zoning)
    if not zoning then
        -- things checked ONLY during logon go here
		local dailydyna = 10
		local dailyshells = 1
		local dynapoints = player:getCharVar("DynaPoints")
		local rainbowshells = player:getCharVar("RainbowShells")
		local lastlogin = player:getCharVar("LastLogin")
		if (lastlogin == nil) then
			lastlogin = 1
		end
		local curdate = os.date("%Y%m%d")
		curdate = tonumber(curdate)
		if (curdate > lastlogin)  then
			player:setCharVar("DynaPoints", dynapoints+dailydyna)
			player:setCharVar("RainbowShells", rainbowshells+dailyshells)
			player:setCharVar("LastLogin", curdate)
		end
		if firstLogin then
            CharCreate(player)
        end
	else
        -- things checked ONLY during zone in go here
    end

    -- apply mods from gearsets (scripts/globals/gear_sets.lua)
    checkForGearSet(player)

    -- god mode
    if player:getCharVar("GodMode") == 1 then
        player:addStatusEffect(tpz.effect.MAX_HP_BOOST,1000,0,0)
        player:addStatusEffect(tpz.effect.MAX_MP_BOOST,1000,0,0)
        player:addStatusEffect(tpz.effect.MIGHTY_STRIKES,1,0,0)
        player:addStatusEffect(tpz.effect.HUNDRED_FISTS,1,0,0)
        player:addStatusEffect(tpz.effect.CHAINSPELL,1,0,0)
        player:addStatusEffect(tpz.effect.PERFECT_DODGE,1,0,0)
        player:addStatusEffect(tpz.effect.INVINCIBLE,1,0,0)
        player:addStatusEffect(tpz.effect.ELEMENTAL_SFORZO,1,0,0)
        player:addStatusEffect(tpz.effect.MANAFONT,1,0,0)
        player:addStatusEffect(tpz.effect.REGAIN,300,0,0)
        player:addStatusEffect(tpz.effect.REFRESH,99,0,0)
        player:addStatusEffect(tpz.effect.REGEN,99,0,0)
        player:addMod(tpz.mod.RACC,2500)
        player:addMod(tpz.mod.RATT,2500)
        player:addMod(tpz.mod.ACC,2500)
        player:addMod(tpz.mod.ATT,2500)
        player:addMod(tpz.mod.MATT,2500)
        player:addMod(tpz.mod.MACC,2500)
        player:addMod(tpz.mod.RDEF,2500)
        player:addMod(tpz.mod.DEF,2500)
        player:addMod(tpz.mod.MDEF,2500)
        player:addHP(50000)
        player:setMP(50000)
    end

    -- !hide
    if player:getCharVar("GMHidden") == 1 then
        player:setGMHidden(true)
    end

    -- remember time player zoned in (e.g., to support zone-in delays)
    player:setLocalVar("ZoneInTime", os.time())
	
	-- add atma effects for characters 10+
	player:delStatusEffectSilent(tpz.effect.ATMA)
	local plvl = player:getMainLvl()
	if (plvl > 9) then
		for i = tpz.ki.ATMA_OF_THE_LION, tpz.ki.ATMA_OF_THE_SAVIOR do
			if (player:hasKeyItem(i)) then
				player:addStatusEffect(tpz.effect.ATMA, 1, 0)
				break
			end
		end
	end
end

function onPlayerLevelUp(player)
	-- add atma effects for characters 10+
	player:delStatusEffectSilent(tpz.effect.ATMA)
	local plvl = player:getMainLvl()
	if (plvl > 9) then
		for i = tpz.ki.ATMA_OF_THE_LION, tpz.ki.ATMA_OF_THE_SAVIOR do
			if (player:hasKeyItem(i)) then
				player:addStatusEffect(tpz.effect.ATMA, 1, 0)
				break
			end
		end
	end
end

function onPlayerLevelDown(player)
	local plvl = player:getMainLvl()
	if (plvl < 10) then
		player:delStatusEffectSilent(tpz.effect.ATMA)
	end
end

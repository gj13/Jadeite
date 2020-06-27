-----------------------------------
-- Area: Port Jeuno
--  NPC: Synergy Furnace
-- Relic weapon augments
-----------------------------------

local relicweapons = { 
--  ["name"] 		= {itemid, aug1, val1} 						***Don't forget to subtract 1 from augment value when creating item
	["sapharai"] = {
		["jobs"] = {2,18}, 
		[75]  = {18264, 45, 8},
		[80]  = {18265},
		[85]  = {18637},
		[90]  = {18651},
		[95]  = {18665},
		[99]  = {19746},
		[100] = {19839},
		[119] = {20480},
		[120] = {20481},
		[121] = {20509}
		},
	["mandau"] = {
		["jobs"] = {5,6,10,19},
		[75]  = {18270, 45, 3},
		[80]  = {18271},
		[85]  = {18638},
		[90]  = {18652},
		[95]  = {18666},
		[99]  = {19747},
		[100] = {19840},
		[119] = {20555},
		[120] = {20556},
		[121] = {20583}
		},
	["excalibur"] = {
		["jobs"] = {5,7,16},
		[75]  = {18276, 45, 3},
		[80]  = {18277},
		[85]  = {18639},
		[90]  = {18653},
		[95]  = {18667},
		[99]  = {19748},
		[100] = {19841},
		[119] = {20645},
		[120] = {20646},
		[121] = {20685}
		},
	["ragnarok"] = {
		["jobs"] = {1,7,8},
		[75] = {18282, 45, 10},
		[80]  = {18283},
		[85]  = {18640},
		[90]  = {18654},
		[95]  = {18668},
		[99]  = {19749},
		[100] = {19842},
		[119] = {20745},
		[120] = {20746},
		[121] = {21683}
		},
	["guttler"]	= {
		["jobs"] = {9,1},
		[75] = {18288, 45, 4},
		[80]  = {18289},
		[85]  = {18641},
		[90]  = {18655},
		[95]  = {18669},
		[99]  = {19750},
		[100] = {19843},
		[119] = {20790},
		[120] = {20791},
		[121] = {21750}
		},
	["bravura"]	= {
		["jobs"] = {1},
		[75] = {18294, 45, 9},
		[80]  = {18295},
		[85]  = {18642},
		[90]  = {18656},
		[95]  = {18670},
		[99]  = {19751},
		[100] = {19844},
		[119] = {20835},
		[120] = {20836},
		[121] = {21756}
		},
	["apocalypse"] = {
		["jobs"] = {8},
		[75] = {18306, 45, 9},
		[80]  = {18307},
		[85]  = {18644},
		[90]  = {18658},
		[95]  = {18672},
		[99]  = {19753},
		[100] = {19846},
		[119] = {20880},
		[120] = {20881},
		[121] = {21808}
		},
	["gungnir"]	= {
		["jobs"] = {14},
		[75] = {18300, 45, 9},
		[80]  = {18301},
		[85]  = {18643},
		[90]  = {18657},
		[95]  = {18671},
		[99]  = {19752},
		[100] = {19845},
		[119] = {20925},
		[120] = {20926},
		[121] = {21857}
		},
	["kikoku"] = {
		["jobs"] = {13},
		[75] = {18312, 45, 4},
		[80]  = {18313},
		[85]  = {18645},
		[90]  = {18659},
		[95]  = {18673},
		[99]  = {19754},
		[100] = {19847},
		[119] = {20970},
		[120] = {20971},
		[121] = {21906}
		},
	["amanomurakumo"] = {
		["jobs"] = {12},
		[75] = {18318, 45, 6},
		[80]  = {18319},
		[85]  = {18646},
		[90]  = {18660},
		[95]  = {18674},
		[99]  = {19755},
		[100] = {19848},
		[119] = {21015},
		[120] = {21016},
		[121] = {21954}
		},
	["mjollnir"] = {
		["jobs"] = {3},
		[75] = {18324, 45, 9},
		[80]  = {18325},
		[85]  = {18647},
		[90]  = {18661},
		[95]  = {18675},
		[99]  = {19756},
		[100] = {19849},
		[119] = {21060},
		[120] = {21061},
		[121] = {21077}
		},
	["claustrum"] = {
		["jobs"] = {4,15,20},
		[75] = {18330, 45, 12},
		[80]  = {18331},
		[85]  = {18648},
		[90]  = {18662},
		[95]  = {18676},
		[99]  = {19757},
		[100] = {19850},
		[119] = {21135},
		[120] = {21136},
		[121] = {22060}
		},
	["annihilator"]	= {
		["jobs"] = {11,17},
		[75] = {18336, 45, 8},
		[80]  = {18337},
		[85]  = {18649},
		[90]  = {18663},
		[95]  = {18677},
		[99]  = {19758},
		[100] = {19851},
		[119] = {21260},
		[120] = {21261},
		[121] = {21267},
		[122] = {22140}
		},
	["yoichinoyumi"] = {
		["jobs"] = {11,12},
		[75] = {18348, 45, 8},
		[80]  = {18349},
		[85]  = {18650},
		[90]  = {18664},
		[95]  = {18678},
		[99]  = {19759},
		[100] = {19852},
		[119] = {21210},
		[120] = {21211},
		[121] = {22115},
		[122] = {22129}
		},
	["gjallarhorn"]	= {
		["jobs"] = {10},
		[75] = {18342, 337, 2},
		[80]  = {18577},
		[85]  = {18578},
		[90]  = {18579},
		[95]  = {18580},
		[99]  = {18572},
		[100] = {18840},
		[119] = {},
		[120] = {},
		[121] = {}
		},
	["aegis"] = {
		["jobs"] = {7},
		[75] = {11927, 33, 10},
		[80]  = {16195},
		[85]  = {16196},
		[90]  = {16197},
		[95]  = {16198},
		[99]  = {11927},
		[100] = {16200},
		[119] = {},
		[120] = {},
		[121] = {}
		}
	}

local testaugments = {
--	["name"]	= {itemid, aug1, val1, aug2, val2, aug3, val3}	***Don't forget to subtract 1 from augment value when creating item
	["war"]	= {1426, 23, 15, 25, 15, 143, 5},	-- acc 15, att 15, dblatt 5
	["whm"]	= {1428, 329, 7, 323, 7, 61, 10},	-- cure potency 7, cure cast time 7, healing skill 10
	["blm"]	= {1429, 133, 5, 350, 10, 52, 7},	-- mag att bonus 5, occ max mag acc 10, mp while healing 7
	["rng"]	= {1436, 27, 15, 29, 15, 512, 5},	-- rng acc 15, rng att 15, str 5	
	["pld"]	= {1432, 54, 5, 31, 15, 4, 1},		-- phys dmg taken 5, eva 15, hp 97
	["thf"]	= {1431, 41, 5, 328, 10, 144, 3},	-- crit rate 5, crit dmg 10, triple att 3
	["brd"]	= {1435, 322, 10, 180, 10, 351, 5},	-- song cast time 10, res silence, occ quick spell 5
	["smn"]	= {1440, 320, 10, 138, 3, 120, 5},	-- blood pact delay 10, refresh 3, avatar mag att bonus 5
	["dnc"]	= {2556, 330, 7, 49, 5, 331, 15},	-- waltz potency 7, haste 5, waltz delay 10
	["cor"]	= {2332, 340, 15, 139, 15, 325, 5},	-- phantom roll delay 15, rapid shot 15, quick draw 5
	["nin"]	= {1438, 31, 20, 53, 10, 146, 5},	-- eva 20, spell interrupt 10, dual wield 5
	["mnk"] = {1427, 4, 0, 145, 10, 195, 10},	-- hp 97, counter 10, subtle blow 10 
	["rdm"] = {1430, 140, 15, 291, 10, 138, 5},	-- fastcast 15, enfeebling 10, refresh 5
	["drk"]	= {1433, 25, 20, 293, 10, 40, 15},	-- att 20, dark magic 10, enmity -15
	["bst"]	= {1434, 102, 5, 110, 5, 115, 5},	-- pet crit rate 5, pet regen 5, pet storetp 5
	["sam"]	= {1437, 142, 15, 33, 15, 143, 5}	-- store tp 15, def 15, dbl attack 5
--	["drg"]	= {1439},
--	["blu"]	= {2331},
--	["pup"] = {2333},
--	["sch"] = {2557},
	}
		
function onTrade(player,npc,trade)
	local ID = zones[player:getZoneID()]
	local foundweapon
	local foundweapontype
	local foundweaponlevel
	local upgradeweaponlevel = 0
	local foundtest
	local dynapoints = player:getCharVar("DynaPoints")
	local augcost = 300 -- cost to augment
	local upgcost = 500 -- cost to upgrade
	local jobchecklevel = 75
	local jobcheck = 0 
	for _,weapon in pairs(relicweapons) do
		for i=75, 122, 1 do 
			if weapon[i] ~= nil then
				if npcUtil.tradeHas(trade, weapon[i][1]) then -- Got a relic?
					foundweapon = weapon[i]
					foundweaponlevel = i
					foundweapontype = weapon
					break;
				end
			end
		end
	end
	if foundweapon ~= nil then
		for _,test in pairs(testaugments) do
			if npcUtil.tradeHas(trade, test[1]) then -- Got testimony?
				foundtest = test
				break;
			end
		end
		if foundtest ~= nil then -- augment time
			if (dynapoints >= augcost) then -- Got money?
				player:tradeComplete()
				player:setCharVar("DynaPoints", dynapoints-augcost)
				if foundweaponlevel == 75 then
					-- 			  (weaponid,	 qty,			aug1,			  val1,			aug2,			val2,		  aug3,			  val3,			aug4,			val4)
					player:addItem(foundweapon[1], 1, foundweapon[2], foundweapon[3]-1, foundtest[2], foundtest[3]-1, foundtest[4], foundtest[5]-1, foundtest[6], foundtest[7]-1)
				else
					player:addItem(foundweapon[1], 1, foundtest[2], foundtest[3]-1, foundtest[4], foundtest[5]-1, foundtest[6], foundtest[7]-1)
				end
				player:messageSpecial(ID.text.ITEM_OBTAINED, foundweapon[1]);
			else
				player:PrintToPlayer(string.format("You need %i Dyna points in order to augment. You only have %i.", augcost, dynapoints))
			end
		else -- weapon upgrade
			if (dynapoints >= upgcost) then -- Got money?
				for i = foundweaponlevel + 1, 122, 1 do
					if foundweapontype[i] ~= nil then
						upgradeweaponlevel = i
						break;
					end
				end
				if upgradeweaponlevel ~= nil then
					local upgradeweapon = foundweapontype[upgradeweaponlevel]
					if upgradeweaponlevel >= 99 then jobchecklevel = 99
					else jobchecklevel = upgradeweaponlevel end
					local availablejobs = foundweapontype["jobs"]
					for _,jobid in pairs(availablejobs) do
						if player:getMainJob() == jobid and player:getMainLvl() >= jobchecklevel then
							jobcheck = 1
							break;
						end
					end
					print(string.format("foundweapon: %i checklevel: %i", foundweaponlevel, jobchecklevel))
					if jobcheck == 1 then
						player:tradeComplete()
						player:setCharVar("DynaPoints", dynapoints-upgcost)
						player:addItem(upgradeweapon[1], 1)
						player:messageSpecial(ID.text.ITEM_OBTAINED, upgradeweapon[1]);
					else
						player:PrintToPlayer("You must have a valid job to the correct level in order to upgrade.")
					end
				else
					player:PrintToPlayer("No upgrade available.")
				end
			else
				player:PrintToPlayer(string.format("You need %i Dyna points to upgrade. You only have %i.", upgcost, dynapoints))
			end
		end
	else
		player:PrintToPlayer("No valid relic weapon found.")
	end
end;

function onTrigger(player,npc)
    player:PrintToPlayer("You may augment your relic weapon by trading it, plus a job testimony.", 0x0, npc:getName())
	player:PrintToPlayer("Please refer to the pinned post in #ffxi on Discord for info on available augments.", 0x0, npc:getName())
	player:PrintToPlayer("Relic weapons can be upgraded in level for 500 Dyna points if you are the correct job and level.", 0x0, npc:getName())
--	player:PrintToPlayer("Warrior: accuracy +15, attack +15, double attack +5%", 0x0, npc:getName())
--	player:PrintToPlayer("White mage: cure potency +7%, cure cast time -7%, occasionally increase resistance to status ailments +10%", 0x0, npc:getName())
--	player:PrintToPlayer("Black mage: magic attack bonus +5, occasionally maximizes magic accuracy +%10, MP recovered while healing +7", 0x0, npc:getName())
--	player:PrintToPlayer("Ranger: ranged accuracy +15, ranged attack +15, strength +5", 0x0, npc:getName())
--	player:PrintToPlayer("Paladin: physical damage taken -5%, evasion +15, HP +97", 0x0, npc:getName())
--	player:PrintToPlayer("Thief: crital rate +5%, critical damage +10%, triple attack +3%", 0x0, npc:getName())
--	player:PrintToPlayer("Bard: song cast time -10%, resist silence +10%, occasionally quickens songs +5%", 0x0, npc:getName())
--	player:PrintToPlayer("Summoner: blood pact ability delay -10%, refresh +5, avatar magic attack bonus +5", 0x0, npc:getName())
--	player:PrintToPlayer("Dancer: waltz potency +7%, haste +5%, waltz delay -15%", 0x0, npc:getName())
--	player:PrintToPlayer("Corsair: phantom roll delay -15%, rapid shot +15, quick draw delay -5", 0x0, npc:getName())
--	player:PrintToPlayer("Ninja: evasion +20, spell interruption rate -10%, dual wield +5", 0x0, npc:getName())
--	player:PrintToPlayer("Monk: ", 0x0, npc:getName())
	
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
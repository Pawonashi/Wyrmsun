--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      scepter_of_fire_events.lua - Defines events for the Scepter of Fire campaign.
--
--      (c) Copyright 2014 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

-- If Rugnur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 gold and 20000 coal") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves while no enemies are in the caves") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")) and (GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-rugnur-thane")) < 1) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Caverns of Chaincolt" or mapinfo.description == "Northern Wastelands" or mapinfo.description == "Eastern Mines" or mapinfo.description == "Shorbear Hills" or mapinfo.description == "Svafnir's Lair" or mapinfo.description == "Caverns of Flame") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
				if (GrandStrategy) then
					if (PlayerHasObjective(GetThisPlayer(), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")) then
						Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500 -- give the funds for Shinsplitter Clan if they managed to successfully stop the shipment
					end
					if (PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time")) then
						Factions.NorlundClan.Gold = Factions.NorlundClan.Gold - 2500
						Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500
						-- if defenses have been breached, then the Shinsplitter Clan conquers the province
						WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit = 0 -- kill off the gnomish envoy if the province has been conquered
						AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Shinsplitter Clan")
					end
				end
			end
		end
		return false
	end
)

-- If the Gnomish Envoy dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetThisPlayer(), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall") or PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall") or PlayerHasObjective(GetThisPlayer(), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetThisPlayer(), "- Have all heroes in the Shorbear caves while no enemies are in the caves") or PlayerHasObjective(GetThisPlayer(), "- Move the Gnomish Envoy to the southern border east of the river")) and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-gnomish-recruit") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Northern Wastelands" or mapinfo.description == "Shorbear Hills") then
			ActionDefeat()
			if (GrandStrategy and PlayerHasObjective(GetThisPlayer(), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")) then
				Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500 -- give the funds for Shinsplitter Clan if they managed to successfully stop the shipment
			end
		end
		return false
	end
)

-- If Baglur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (
			(
				PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 gold and 20000 coal") 
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves while no enemies are in the caves")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Durstorn and Baglur must survive")
			)
			and GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-baglur-thane") < 1
			and (GetFactionExists("Baglur") == false or GetPlayerData(GetFactionPlayer("Baglur"), "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(GetFactionPlayer("Baglur"), "UnitTypesCount", "unit-hero-baglur-thane") < 1)
		) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
			ActionDefeat()
			if (GrandStrategy) then
				if (PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time")) then
					Factions.NorlundClan.Gold = Factions.NorlundClan.Gold - 2500
					Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500
					-- if defenses have been breached, then the Shinsplitter Clan conquers the province
					WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit = 0 -- kill off the gnomish envoy if the province has been conquered
					AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Shinsplitter Clan")
				end
			end
		end
		return false
	end
)

-- Searching for the Runecrafter initial dialogue
-- based on the Searching for the Runecrafter scenario of the Sceptre of Fire campaign from Battle for Wesnoth
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Thursagan") and PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall") == false) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "Name") ~= "Shinsplitter Clan" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur-thane") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"",
			"The journey to the far northern wastelands was long and perilous. For the tunnels were winding and treacherous, and the paths were not safe from goblins, or worse. Nevertheless, they did reach the northlands, and began to search for the runesmith named Thursagan - the sage of fire.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Gnomish Envoy",
				"Now where are we going, anyway? We have been taking wrong turns and fighting goblins for months. This trip better have a good payoff to be worth that.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Baglur",
					"We need to find the sage Thursagan and convince him to return to the citadel with us. He's somewhere up here.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Rugnur",
						"Well, how are we supposed to find him?",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Baglur",
							"His will probably be the only house up here. No one else is insane enough to live this far north! Even the Shinsplitters won't challenge us here.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Gnomish Envoy",
								"Except for goblins, right? They live in the far northlands. They're probably lurking around here somewhere.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Baglur",
									"Right. We'll probably have to fight our way through to his house.",
									player,
									{"~!Continue"},
									{function(s)
										if (GrandStrategy == false) then
											unit = CreateUnit("unit-gnomish-recruit", 0, {8, 60}) -- gnomish envoy
											IncreaseUnitLevel(unit, 1, true)
											AcquireAbility(unit, "upgrade-sword-mastery")
										end
										if (mapinfo.description == "Northern Wastelands") then
											RemovePlayerObjective(player, "- Defeat your enemies")
										end
										AddPlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
										AddPlayerObjective(player, "- Rugnur, Baglur, Thursagan and the gnomish envoy must survive")
									end},
									"dwarf/icons/baglur.png"
								)
								end},
								"gnome/icons/gnomish_recruit.png"
							)
							end},
							"dwarf/icons/baglur.png"
						)
						end},
						"dwarf/icons/rugnur.png"
					)
					end},
					"dwarf/icons/baglur.png"
				)
				end},
				"gnome/icons/gnomish_recruit.png"
			)
			end},
			nil,
			nil,
			GrandStrategy
		)

		return false
	end
)

AddTrigger(
	function()
		if (GameCycle > 7500) then
			return true
		end
		return false
	end,
	function()
		NorthernWastelandsEnemy(17, 23)
		NorthernWastelandsEnemy(33, 46)
		NorthernWastelandsEnemy(50, 68)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle > 22500) then
			return true
		end
		return false
	end,
	function()
		NorthernWastelandsEnemy(30, 14)
		NorthernWastelandsEnemy(50, 16)
		return false
	end
)

-- move gryphon riders nearer to Rugnur's base when someone from Rugnur's side steps near enough them
AddTrigger(
	function()
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Gryphon Riders"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-gryphon-rider") then
				local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {8 - 4, 53 - 4}, {8 + 4, 53 + 4})
				if (unit_quantity > 0) then
					player = GetThisPlayer()
					return true
				end
			end
		end
		return false
	end,
	function()
		OrderUnit(GetFactionPlayer("Gryphon Riders"), "unit-dwarven-gryphon-rider", {2, 35}, {8, 53}, "move")
		return false
	end
)
		
-- Find Gryphon Riders
AddTrigger(
	function()
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Gryphon Riders"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-gryphon-rider") then
				local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {GetUnitVariable(uncount[unit1],"PosX") - 6, GetUnitVariable(uncount[unit1],"PosY") - 6}, {GetUnitVariable(uncount[unit1],"PosX") + 6, GetUnitVariable(uncount[unit1],"PosY") + 6})
				if (unit_quantity > 0) then
					player = GetThisPlayer()
					return true
				end
			end
		end
		return false
	end,
	function()
		Event(
			"Gryphon Rider",
			"We'd like to speak with ye.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Gnomish Envoy",
				"Aah! What is that?!",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Baglur",
					"Is that... is that a gryphon?",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Gryphon Rider",
						"Aye. Will ye speak with us now?",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Rugnur",
							"What do ye want, gryphon rider?",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Gryphon Rider",
								"Are ye looking for a runemaster?",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Rugnur",
									"Well, um, aye. Why, can ye help us?",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Gryphon Rider",
										"Aye. If ye kill the goblins, we'll help ye.",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Baglur",
											"Sure, we'll help ye fight goblins.",
											player,
											{"~!Continue"},
											{function(s)
												OrderUnit(GetFactionPlayer("Gryphon Riders"), "unit-dwarven-gryphon-rider", {0, 34}, {6, 52}, "move")
											end},
											"dwarf/icons/baglur.png"
										)
										end},
										"dwarf/icons/gryphon_rider.png"
									)
									end},
									"dwarf/icons/rugnur.png"
								)
								end},
								"dwarf/icons/gryphon_rider.png"
							)
							end},
							"dwarf/icons/rugnur.png"
						)
						end},
						"dwarf/icons/gryphon_rider.png"
					)
					end},
					"dwarf/icons/baglur.png"
				)
				end},
				"gnome/icons/gnomish_recruit.png"
			)
			end},
			"dwarf/icons/gryphon_rider.png"
		)
		return false
	end
)

-- if Thursagan's smithy is found by a gryphon rider
AddTrigger(
	function()
		for i=0,14 do
			if (PlayerHasObjective(i, "- Find Thursagan and bring him to your Mead Hall") and IfNearUnit(i, ">=", 1, "units", "unit-dwarven-smithy")) then
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Thursagan"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-smithy") then
						if (GetNumUnitsAt(i, "unit-dwarven-gryphon-rider", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4}) > 0) then
							player = i
							return true
						end
					end
				end
			end
		end
		return false
	end,
	function()
		Event(
			"Thursagan",
			"Go away, ye birds! Or I shall burn ye out of the air!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Baglur",
				"He doesn't want to talk to the gryphon riders, apparently. I think we'll have to get someone there he will talk to...",
				player,
				{"~!Continue"},
				{function(s)
				end},
				"dwarf/icons/baglur.png"
			)
			end},
			"dwarf/icons/thursagan.png"
		)
		return false
	end
)

-- if Thursagan's smithy is found by a non-gryphon rider
AddTrigger(
	function()
		for i=0,14 do
			if (PlayerHasObjective(i, "- Find Thursagan and bring him to your Mead Hall") and IfNearUnit(i, ">=", 1, "units", "unit-dwarven-smithy")) then
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Thursagan"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-smithy") then
						if ((GetNumUnitsAt(i, "units", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4}) - GetNumUnitsAt(i, "unit-dwarven-gryphon-rider", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})) > 0) then
							player = i
							return true
						end
					end
				end
			end
		end
		return false
	end,
	function()
		unit = CreateUnit("unit-hero-thursagan", player, {Players[GetFactionPlayer("Thursagan")].StartPos.x, Players[GetFactionPlayer("Thursagan")].StartPos.y})
		Event(
			"Thursagan",
			"What do ye people want?! Leave me alone!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Rugnur",
				"Old sage, we come with a message from Lord Durstorn. He asks ye to come back to the city.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Thursagan",
					"Ha! That fool thinks he can order me around. Why does he want me to go back, anyway?",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Baglur",
						"We have entered into a bargain with the king of Untersberg to craft a scepter for him.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Thursagan",
							"Oh, and now I suppose Durstorn wants me to craft it, eh? Well I'm not going to.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Rugnur",
								"Ye don't want to make a scepter imbued with the mighty ruby of fire? Very well, yer choice is made.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Thursagan",
									"The ruby of fire, what is that, some worthless gnomish gem?",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Baglur",
										"It is a gnomish gem, but it is also supposedly the most flawless precious stone ever seen.",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Thursagan",
											"Oh, really? And what does the gnomish king want us to do with it?",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Rugnur",
												"Cut it and insert it into a scepter, creating a powerful symbol of the gnomish monarchy.",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Thursagan",
													"I see. Fine then, I will help ye craft this scepter... into the greatest artifact ever seen. This will be a true test of my skill. I expect it will take many years.",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Baglur",
														"Good. Now, there are still wild animals and goblins here... We have to get back into the caves.",
														player,
														{"~!Continue"},
														{function(s)
															PlayMusic("music/knolls.ogg")
															NorthernWastelandsEnemy(32, 69)
															NorthernWastelandsEnemy(2, 47)
															NorthernWastelandsEnemy(52, 47)
															NorthernWastelandsEnemy(2, 33)
															AddTrigger(
																function()
																	if (PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall") and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-thursagan") < 1) then
																		player = GetThisPlayer()
																		return true
																	end
																	return false
																end,
																function() 
																	RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
																	if (mapinfo.description == "Northern Wastelands") then
																		ActionDefeat()
																	end
																	return false
																end
															)
														end},
														"dwarf/icons/baglur.png"
													)
													end},
													"dwarf/icons/thursagan.png"
												)
												end},
												"dwarf/icons/rugnur.png"
											)
											end},
											"dwarf/icons/thursagan.png"
										)
										end},
										"dwarf/icons/baglur.png"
									)
									end},
									"dwarf/icons/thursagan.png"
								)
								end},
								"dwarf/icons/rugnur.png"
							)
							end},
							"dwarf/icons/thursagan.png"
						)
						end},
						"dwarf/icons/baglur.png"
					)
					end},
					"dwarf/icons/thursagan.png"
				)
				end},
				"dwarf/icons/rugnur.png"
			)
			end},
			"dwarf/icons/thursagan.png"
		)
		return false
	end
)

AddTrigger(
	function()
		for i=0,14 do
			if (
				PlayerHasObjective(i, "- Find Thursagan and bring him to your Mead Hall")
				and (IfNearUnit(i, ">=", 1, "unit-hero-thursagan", "unit-dwarven-town-hall") or IfNearUnit(i, ">=", 1, "unit-hero-thursagan", "unit-dwarven-stronghold"))
			) then
				player = i
				return true
			end
		end
		return false
	end,
	function()
		Event(
			"Thursagan",
			"Well, now we are near the caves again! Come on, back south, to the city.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"The path back was less dangerous than it was a year earlier. It did not take them so long. So they quickly returned to the dwarven city, with new members to their party.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Rugnur",
					"Lord Durstorn, we have succeeded in our mission. Thursagan is here.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Durstorn",
						"What? Ye mean ye found Thursagan and got him to return with ye? Astounding!",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Baglur",
							"Aye, we did.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Thursagan",
								"Now, where is this ruby that I am to work with, eh Durstorn?",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Durstorn",
									"In the treasury. And leave it there until yer ready to work with it - I still don't trust ye.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Thursagan",
										"Ha! ~<Ye~> don't trust ~<me~>?",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Durstorn",
											"Exactly! Why would I? And I order ye to stay out of the treasury, away from that ruby!",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Thursagan",
												"Ye don't dictate what I am to do, Durstorn! I will do as I please, and don't stop me if ye want me to make this scepter.",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Durstorn",
													"The ruby is mine, and don't touch it!",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Rugnur",
														"Uh, technically it's Pypo's, and I think that if Thursagan needs to see it to plan this scepter, we must allow it.",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															"Durstorn",
															"It will be as it must, then. (~<Grumble~> ~<grumble~>)",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Thursagan",
																"Hm... a most interesting jewel. I will start drawing up plans for the scepter immediately.",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Thursagan",
																	"Now, I will need certain materials to make this scepter.",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Durstorn",
																		"Oh, what?",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Thursagan",
																			"I would say probably ten stone of artifact-quality gold and twenty stone of the finest coal, and many of the finest jewels in the land - we'll need others to search for those, though. I'll also need to have the jeweler cut the ruby once I have the plans done.",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Durstorn",
																				"Just use my gold and coal, I have enough! Or, if they're not 'good enough' for ye, find them yerself.",
																				player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					"Thursagan",
																					"Ye try my patience, Durstorn. Ye know yers aren't acceptable, but ye have to give me something or I can't make the scepter!",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						"Baglur",
																						"Wait, wait. The gold and coal... I think we can find those in the abandoned eastern mines, north of the Arkan-thoria. Goblins ha' overrun them, but earlier they were the source of the finest smithing materials.",
																						player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							"Rugnur",
																							"So, we will go to the eastern mines!",
																							player,
																							{"~!Continue"},
																							{function(s)
																							Event(
																								"Durstorn",
																								"Fine. As for the jewels, I will have others obtain those. That will cost quite a bit of our payment, but it can't be helped. Our people do not mine jewels.",
																								player,
																								{"~!Continue"},
																								{function(s)
																								Event(
																									"Thursagan",
																									"That is acceptable. Durstorn, send some miners along with us to the eastern mines.",
																									player,
																									{"~!Continue"},
																									{function(s)
																										RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
																										if (player == GetThisPlayer() and GrandStrategy == false) then
																											if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Searching for the Runecrafter") == false) then
																												table.insert(wyr.preferences.QuestsCompleted, "Searching for the Runecrafter")
																											end
																											SavePreferences()
																										end
																										if (mapinfo.description == "Northern Wastelands" and player == GetFactionPlayer("Norlund Clan")) then
																											if (GrandStrategy) then
																												WorldMapProvinces.NorthernWastelands.SettlementBuildings.unit_dwarven_smithy = 0
																											end
																											ActionVictory()
																										end
																									end},
																									"dwarf/icons/thursagan.png"
																								)
																								end},
																								"dwarf/icons/durstorn.png"
																							)
																							end},
																							"dwarf/icons/rugnur.png"
																						)
																						end},
																						"dwarf/icons/baglur.png"
																					)
																					end},
																					"dwarf/icons/thursagan.png"
																				)
																				end},
																				"dwarf/icons/durstorn.png"
																			)
																			end},
																			"dwarf/icons/thursagan.png"
																		)
																		end},
																		"dwarf/icons/durstorn.png"
																	)
																	end},
																	"dwarf/icons/thursagan.png"
																)
																end},
																"dwarf/icons/thursagan.png"
															)
															end},
															"dwarf/icons/durstorn.png"
														)
														end},
														"dwarf/icons/rugnur.png"
													)
													end},
													"dwarf/icons/durstorn.png"
												)
												end},
												"dwarf/icons/thursagan.png"
											)
											end},
											"dwarf/icons/durstorn.png"
										)
										end},
										"dwarf/icons/thursagan.png"
									)
									end},
									"dwarf/icons/durstorn.png"
								)
								end},
								"dwarf/icons/thursagan.png"
							)
							end},
							"dwarf/icons/baglur.png"
						)
						end},
						"dwarf/icons/durstorn.png"
					)
					end},
					"dwarf/icons/rugnur.png"
				)
				end}
			)
			end},
			"dwarf/icons/thursagan.png"
		)
		return false
	end
)

-- If Thursagan dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 gold and 20000 coal") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves while no enemies are in the caves") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")) and GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-thursagan") < 1 and GetPlayerData(15, "UnitTypesCount", "unit-hero-thursagan") < 1) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Eastern Mines" or mapinfo.description == "Shorbear Hills" or mapinfo.description == "Svafnir's Lair" or mapinfo.description == "Caverns of Flame") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
			end
		end
		return false
	end
)

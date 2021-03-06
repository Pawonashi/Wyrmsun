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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineCharacter("Caesar", { -- Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 227.
	Name = "Caesar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "latin",
	Faction = "rome",
	ProvinceOfOrigin = "Latium", -- correct?
	Year = -58, -- De Bello Gallico was written 58-52 BC
	AuthoredWorks = {"upgrade-work-de-bello-gallico"}
})

DefineCharacter("Marcus Aurelius", { -- Source: "Ancient Warfare VII.6", 2013, pp. 6, 8, 10.
	Name = "Marcus Aurelius",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "latin",
	Faction = "rome",
	ProvinceOfOrigin = "Latium", -- put him in Rome's province since we don't have information on his actual province of origin
	Year = 121, -- born on 26 April 121
	DeathYear = 180, -- died on 17 March 180, of smallpox or cancer
	Trait = "upgrade-dutiful", -- placed strong importance on doing one's duty in his "Meditations"
	AuthoredWorks = {"upgrade-work-meditations"},
	HistoricalTitles = {
		-- was consul when he was 18 years old
		-- in 140 he became consul a second time
		"head-of-state", 161, 0, "latin", "rome" -- Roman Emperor from 161 (with Lucius Verus as his co-emperor)
	}
	-- married to Faustina the Younger
})

DefineCharacter("Lucius Verus", { -- Source: "Ancient Warfare VII.6", 2013, pp. 6-7.
	Name = "Lucius Verus",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "latin",
	Faction = "rome",
	ProvinceOfOrigin = "Latium", -- put him in Rome's province since we don't have information on his actual province of origin
	Year = 161, -- became co-emperor in 161
	DeathYear = 168, -- died (apparently) in 168 of a stroke
	HistoricalTitles = {
		-- Roman Emperor from 161 (as co-emperor to Marcus Aurelius, but Marcus Aurelius seemed to be the one who held more power)
	}
})

DefineCharacter("Geofrei Gaimar", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 76.
	Name = "Geofrei",
	FamilyName = "Gaimar", -- was that actually his family name?
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be something more appropriate for a writer?
	Civilization = "latin", -- should be French
	Faction = "france",
	ProvinceOfOrigin = "France", -- accurate?
	Year = 1135 -- composed Estoire des Anglais c. 1135-1140 AD
})

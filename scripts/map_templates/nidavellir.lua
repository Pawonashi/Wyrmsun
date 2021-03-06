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
--      (c) Copyright 2016 by Andrettin
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

DefineMapTemplate("nidavellir", {
	Name = "Nidavellir",
	World = "Nidavellir",
	Width = 128,
	Height = 128,
	BaseTerrain = "dry-mud",
	GeneratedTerrains = {
		"mud", "medium",
		"shallow-water", "medium",
		"rock", "high",
		"flamefood-tree", "medium"
	},
	GeneratedNeutralUnits = {
		"unit-gold-deposit", 2,
		"unit-silver-deposit", 2,
		"unit-copper-deposit", 2,
		"unit-snigill", 64,
		"unit-slime", 32,
		"unit-blood-bat", 16,
		"unit-yale", 16,
		"unit-dread-bat", 8,
		"unit-gryphon", 8,
		"unit-wyrm", 4,
		"unit-mercenary-camp", 1
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-gold-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

DefineMapTemplate("nidavellir-underground-1", {
	Name = "Nidavellir Underground 1",
	World = "Nidavellir",
	Layer = 1,
	Width = 128,
	Height = 128,
	BaseTerrain = "rockbound-cave-floor",
	BorderTerrain = "cave-wall",
	GeneratedTerrains = {
		"cave-wall", "very-high",
		"cave-floor", "very-high",
		"gray-shallow-water", "low"
	},
	GeneratedNeutralUnits = {
		"unit-gold-deposit", 2,
		"unit-silver-deposit", 2,
		"unit-copper-deposit", 2,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-snigill", 64,
		"unit-slime", 32,
		"unit-blood-bat", 16,
		"unit-dread-bat", 8,
		"unit-wyrm", 4,
		"unit-mercenary-camp", 1
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-gold-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

SetMapTemplateUnit("nidavellir-underground-1", "unit-dwarven-town-hall", "brising-clan", {-1, -1})
SetMapTemplateUnit("nidavellir-underground-1", "unit-dwarven-town-hall", "shadowcharm-clan", {-1, -1})
SetMapTemplateHero("nidavellir-underground-1", "Fjalar", "shadowcharm-clan", {-1, -1})
SetMapTemplateHero("nidavellir-underground-1", "Galar", "shadowcharm-clan", {-1, -1})
--SetMapTemplateUnit("nidavellir", "unit-gnomish-town-hall", "acthnic-tribe", {-1, -1})
--SetMapTemplateUnit("nidavellir", "unit-gnomish-town-hall", "cubital-tribe", {-1, -1})
SetMapTemplateUnit("nidavellir", "unit-gnomish-town-hall", "sagan-tribe", {-1, -1})
--SetMapTemplateUnit("nidavellir", "unit-gnomish-town-hall", "vulcan-tribe", {-1, -1})
SetMapTemplateUnit("nidavellir", "unit-goblin-town-hall", "khag-tribe", {-1, -1})
--SetMapTemplateUnit("nidavellir", "unit-goblin-town-hall", "lggi-tribe", {-1, -1})

SetMapTemplateLayerConnector("nidavellir", "unit-portal", {-1, -1}, "Asgard")
SetMapTemplateLayerConnector("nidavellir", "unit-cavern-entrance", {-1, -1}, 1)
SetMapTemplateLayerConnector("nidavellir-underground-1", "unit-cavern-entrance", {-1, -1}, 0)

--Load("scripts/map_templates/nidavellir/aurvang.lua")
--Load("scripts/map_templates/nidavellir/joruvellir.lua")
--Load("scripts/map_templates/nidavellir/svarinshaug.lua")
--Load("scripts/map_templates/nidavellir/untersberg.lua")
--Load("scripts/map_templates/nidavellir/caverns_of_chaincolt_city.lua")
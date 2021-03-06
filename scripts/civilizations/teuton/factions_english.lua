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

DefineFaction("bernice-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Name = "Bernice Tribe",
	Civilization = "teuton",
	ParentFaction = "angle-tribe",
	Type = "tribe",
	Language = "old-english",
	Colors = {"brown"},
	DevelopsTo = {"bernicia", "northumbria", "england", "scotland"},
	FactionUpgrade = "upgrade-bernice-tribe-faction",
	Description = "The Bernice were an Anglian people who established themselves on the Northumbrian coast, eventually managing to conquer the surrounding Celtic territories.",
	HistoricalFactionDerivations = {526, "teuton", "angle-tribe"}
})

DefineFaction("dere-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Name = "Dere Tribe",
	Civilization = "teuton",
	ParentFaction = "angle-tribe",
	Type = "tribe",
	Language = "old-english",
	Colors = {"blue"},
	DevelopsTo = {"deira", "northumbria", "england", "scotland"},
	FactionUpgrade = "upgrade-bernice-tribe-faction",
	Description = "The Dere were a group of Anglian peoples, who originally dwelled in the central and eastern parts of modern Yorkshire. Their name comes from the British word \"deifr\" (meaning \"waters\"), likely due to their initial settlements being located at the confluence of multiple rivers into the Humber.",
	HistoricalFactionDerivations = {500, "teuton", "angle-tribe"} -- The Dere (a collection of Anglian peoples) were in possession of York in 500 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
})

DefineFaction("gumeninga-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Name = "Gumeninga Tribe",
	Civilization = "teuton",
	ParentFaction = "angle-tribe",
	Type = "tribe",
	Language = "old-english",
	Colors = {"brown"},
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-gumeninga-tribe-faction", -- since all we know about them is their religious location, it makes sense to give them a priest-related bonus
	Description = "The Gumeningas were an Anglo-Saxon tribe who inhabited the area of Middlesex.",
	Background = "The name of the Gumeningas was present in the place name \"Gumeninga hearh\" (the Old English name for Harrow on the Hill), meaning \"the holy place of the Gumeningas\"."
})

DefineFaction("bernicia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Bernicia",
	Civilization = "teuton",
	ParentFaction = "bernice-tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"brown"},
	DefaultTier = "kingdom",
	DevelopsTo = {"northumbria", "england", "scotland"},
	FactionUpgrade = "upgrade-angle-tribe-faction",
	Description = "Bernicia was the kingdom founded by the Bernice people in Northumbria.",
	HistoricalFactionDerivations = {547, "teuton", "bernice-tribe"} -- the Kingdom of Bernicia was founded in 547 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
})

DefineFaction("deira", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Deira",
	Civilization = "teuton",
	ParentFaction = "dere-tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	DevelopsTo = {"northumbria", "england", "scotland"},
	FactionUpgrade = "upgrade-angle-tribe-faction",
	Description = "Deira was the kingdom founded by the Dere people in Northumbria.",
	HistoricalFactionDerivations = {588, "teuton", "dere-tribe"} -- according to tradition, Æthelric of Bernicia acquired the kingdom of Deira upon its king Ælle's death in 588 AD; and since their king died in this year, the kingdom existed then
})

DefineFaction("east-anglia", {
	Name = "East Anglia",
	Civilization = "teuton",
	ParentFaction = "angle-tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"pink"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	Description = "",
	HistoricalFactionDerivations = {616, "teuton", "angle-tribe"} -- The kingdom of East Anglia existed in 616 under Rædwald; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-79.
})

DefineFaction("essex", {
	Name = "Essex",
	Civilization = "teuton",
--	ParentFaction = "saxon-tribe",
	ParentFaction = "angle-tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"purple"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	Description = ""
})

DefineFaction("kent", {
	Name = "Kent",
	Civilization = "teuton",
--	ParentFaction = "jute-tribe",
	ParentFaction = "angle-tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"cyan"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	Description = ""
})

DefineFaction("mercia", {
	Name = "Mercia",
	Civilization = "teuton",
	ParentFaction = "angle-tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"white"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	Description = "",
	HistoricalFactionDerivations = {654, "teuton", "angle-tribe"} -- we have notice of the fall of a king Penda of Mercia in 654 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
})

DefineFaction("middle-anglia", {
	Name = "Middle Anglia",
	Civilization = "teuton",
	ParentFaction = "angle-tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"violet"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	Description = "",
	HistoricalFactionDerivations = {654, "teuton", "angle-tribe"} -- Peada was king of the Middle Angles when Penda fell; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
})

DefineFaction("northumbria", {
	Name = "Northumbria",
	Civilization = "teuton",
	ParentFaction = "bernicia",
	Type = "polity",
	Language = "old-english",
	Colors = {"brown"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england", "scotland"},
	HistoricalFactionDerivations = {654, "teuton", "bernicia"} -- Northumbria unified by Oswiu of Bernicia in 654
})

DefineFaction("wessex", {
	Name = "Wessex",
	Civilization = "teuton",
--	ParentFaction = "saxon-tribe",
	ParentFaction = "angle-tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"red"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	Description = ""
})

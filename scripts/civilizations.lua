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

DefineCivilization("neutral", {
	Display = "Neutral",
	Playable = false,
	Adjective = "Neutral",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-dwarven-shield-1",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-dwarven-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground",
		"return-goods", "icon-dwarven-return-goods"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	},
	ShipNames = {
		"Naglfar", -- ship of the giants in Norse mythology, whose helmsman is Hrym; made of dead men's nails; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 21.
		"Ringhorn", -- Balder's ship in Norse mythology in which he was cremanted; ; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 155, 249.
		"Skidbladnir", -- ship built by dwarves in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 101.
		"Skrauti" -- dragon ship which appears in the Norse saga of Sörli the Strong; Sörli might be Norse himself, but the source does not mention his actual origins; the name means "precious thing"; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 119.
	}
})

--[[
DefineCivilization("dutch", { -- information for later use
	Display = "Dutch",
	Playable = false,
	Visible = true,
	Species = "human",
	ParentCivilization = "teuton",
	Language = "dutch",
	Adjective = "Dutch",
	DevelopsFrom = {"teuton"},
	ProvinceNames = {
		"Gelderland", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
		"Overijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
	},
	SettlementNames = {
		"Amsterdam",
		"Rotterdam"
	},
	RiverNames = {
		"Ijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
	}
})
--]]

DefineCivilization("dwarf", {
	Display = "Dwarf",
	Visible = true,
	Species = "dwarf",
	ParentCivilization = "neutral",
	Language = "dwarven",
	Adjective = "Dwarven",
	DefaultColor = "red",
	NegativeYearLabel = "BU", -- Before Untersberg
	YearLabel = "YU", -- Years Untersberg
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-dwarven-shield-1",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-dwarven-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground",
		"return-goods", "icon-dwarven-return-goods"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	},
	Description = _("Dwarves live in the world of Nidavellir, where gnomes, goblins and kobolds also dwell. They usually prefer living in mountainous terrain or underground, and build their dwellings mostly out of stone. Dwarves are particularly talented at smithing, and ownership of precious metals is a passion for many of them."),
	PersonalNames = {
		"female", "Gneissus", -- from Dyson Logos' The Tomb of Durâhn Oakenshield, which the author agreed to release under the GPLv2
		"male", "Ai", -- dwarf from Norse mythology who was a settler of Joruvellir
		"male", "Aigaithas", -- from Battle for Wesnoth
		"male", "Aigaithil", -- from Battle for Wesnoth
		"male", "Aigaithing", -- from Battle for Wesnoth
		"male", "Aigaithol", -- from Battle for Wesnoth
		"male", "Aigalas", -- from Battle for Wesnoth
		"male", "Aigaling", -- from Battle for Wesnoth
		"male", "Aigalis", -- from Battle for Wesnoth
		"male", "Aigalol", -- from Battle for Wesnoth
		"male", "Aigalsil", -- from Battle for Wesnoth
		"male", "Aigatas", -- from Battle for Wesnoth
		"male", "Aigatis", -- from Battle for Wesnoth
		"male", "Aigatlos", -- from Battle for Wesnoth
		"male", "Aigatsil", -- from Battle for Wesnoth
		"male", "Aigatsol", -- from Battle for Wesnoth
		"male", "Aigatus", -- from Battle for Wesnoth
		"male", "Aigcatas", -- from Battle for Wesnoth
		"male", "Aigcatil", -- from Battle for Wesnoth
		"male", "Aigcating", -- from Battle for Wesnoth
		"male", "Aigcatis", -- from Battle for Wesnoth
		"male", "Aigcatsil", -- from Battle for Wesnoth
		"male", "Aigcatsol", -- from Battle for Wesnoth
		"male", "Aigcatus", -- from Battle for Wesnoth
		"male", "Aigdring", -- from Battle for Wesnoth
		"male", "Aigdris", -- from Battle for Wesnoth
		"male", "Aigdrlos", -- from Battle for Wesnoth
		"male", "Aigdrsil", -- from Battle for Wesnoth
		"male", "Aigdrsol", -- from Battle for Wesnoth
		"male", "Aigduras", -- from Battle for Wesnoth
		"male", "Aigdurlos", -- from Battle for Wesnoth
		"male", "Aigdursol", -- from Battle for Wesnoth
		"male", "Aiglondur", -- dwarven hero in Battle for Wesnoth: The Hammer of Thursagan
		"male", "Aigthaing", -- from Battle for Wesnoth
		"male", "Aigthais", -- from Battle for Wesnoth
		"male", "Aigthasil", -- from Battle for Wesnoth
		"male", "Aigthaus", -- from Battle for Wesnoth
		"male", "Alaithas", -- from Battle for Wesnoth
		"male", "Alaithis", -- from Battle for Wesnoth
		"male", "Alaithlos", -- from Battle for Wesnoth
		"male", "Alaithol", -- from Battle for Wesnoth
		"male", "Alaithsol", -- from Battle for Wesnoth
		"male", "Alaithus", -- from Battle for Wesnoth
		"male", "Alalas", -- from Battle for Wesnoth
		"male", "Alalil", -- from Battle for Wesnoth
		"male", "Alalol", -- from Battle for Wesnoth
		"male", "Alalsol", -- from Battle for Wesnoth
		"male", "Alalus", -- from Battle for Wesnoth
		"male", "Alatas", -- from Battle for Wesnoth
		"male", "Alatil", -- from Battle for Wesnoth
		"male", "Alating", -- from Battle for Wesnoth
		"male", "Alatlos", -- from Battle for Wesnoth
		"male", "Alatsil", -- from Battle for Wesnoth
		"male", "Alberich", -- dwarf from German sagas
		"male", "Alcatil", -- from Battle for Wesnoth
		"male", "Alcatis", -- from Battle for Wesnoth
		"male", "Alcatlos", -- from Battle for Wesnoth
		"male", "Alcatsil", -- from Battle for Wesnoth
		"male", "Aldras", -- from Battle for Wesnoth
		"male", "Aldril", -- from Battle for Wesnoth
		"male", "Aldring", -- from Battle for Wesnoth
		"male", "Aldris", -- from Battle for Wesnoth
		"male", "Aldrlos", -- from Battle for Wesnoth
		"male", "Aldrol", -- from Battle for Wesnoth
		"male", "Aldrsol", -- from Battle for Wesnoth
		"male", "Alduras", -- from Battle for Wesnoth
		"male", "Aldurlos", -- from Battle for Wesnoth
		"male", "Aldurol", -- from Battle for Wesnoth
		"male", "Alf", -- dwarf from Norse mythology who was a settler of Joruvellir
		"male", "Alfrigg", -- dwarf from Norse mythology
		"male", "Alsvid", -- dwarf from Norse mythology
		"male", "Althaas", -- from Battle for Wesnoth
		"male", "Althail", -- from Battle for Wesnoth
		"male", "Althalos", -- from Battle for Wesnoth
		"male", "Althaol", -- from Battle for Wesnoth
		"male", "Althasil", -- from Battle for Wesnoth
		"male", "Althasol", -- from Battle for Wesnoth
		"male", "Althaus", -- from Battle for Wesnoth
		"male", "Althjof", -- "mighty thief", dwarf from Norse mythology
		"male", "Alvis", -- "all-knowing"/"all-wise", dwarf from Norse mythology
		"male", "Anaithas", -- from Battle for Wesnoth
		"male", "Anaithil", -- from Battle for Wesnoth
		"male", "Anaithing", -- from Battle for Wesnoth
		"male", "Anaithis", -- from Battle for Wesnoth
		"male", "Anaithsil", -- from Battle for Wesnoth
		"male", "Anaithus", -- from Battle for Wesnoth
		"male", "Analil", -- from Battle for Wesnoth
		"male", "Anallos", -- from Battle for Wesnoth
		"male", "Analol", -- from Battle for Wesnoth
		"male", "Analsil", -- from Battle for Wesnoth
		"male", "Analus", -- from Battle for Wesnoth
		"male", "Anatas", -- from Battle for Wesnoth
		"male", "Anating", -- from Battle for Wesnoth
		"male", "Anatis", -- from Battle for Wesnoth
		"male", "Anatol", -- from Battle for Wesnoth
		"male", "Anatsol", -- from Battle for Wesnoth
		"male", "Ancatas", -- from Battle for Wesnoth
		"male", "Ancatil", -- from Battle for Wesnoth
		"male", "Ancatol", -- from Battle for Wesnoth
		"male", "Ancatus", -- from Battle for Wesnoth
		"male", "Andril", -- from Battle for Wesnoth
		"male", "Andris", -- from Battle for Wesnoth
		"male", "Andrlos", -- from Battle for Wesnoth
		"male", "Andrus", -- from Battle for Wesnoth
		"male", "Anduril", -- from Battle for Wesnoth
		"male", "Andurol", -- from Battle for Wesnoth
		"male", "Andursol", -- from Battle for Wesnoth
		"male", "Andurus", -- from Battle for Wesnoth
		"male", "Andvari", -- dwarf from Norse mythology who possessed a lot of gold, including a golden ring (Andvaranaut) which was stolen by Loki; was possibly one of the settlers of Joruvellir; son of Oin
		"male", "Angarthing", -- dwarf from Battle for Wesnoth: The Hammer of Thursagan
		"male", "Anthaas", -- from Battle for Wesnoth
		"male", "Anthaing", -- from Battle for Wesnoth
		"male", "Anthais", -- from Battle for Wesnoth
		"male", "Anthaol", -- from Battle for Wesnoth
		"male", "Anthasil", -- from Battle for Wesnoth
		"male", "Anthasol", -- from Battle for Wesnoth
		"male", "Anthaus", -- from Battle for Wesnoth
		"male", "Augaithas", -- from Battle for Wesnoth
		"male", "Augaithing", -- from Battle for Wesnoth
		"male", "Augaithsil", -- from Battle for Wesnoth
		"male", "Augaithus", -- from Battle for Wesnoth
		"male", "Augalas", -- from Battle for Wesnoth
		"male", "Augaling", -- from Battle for Wesnoth
		"male", "Augalol", -- from Battle for Wesnoth
		"male", "Augating", -- from Battle for Wesnoth
		"male", "Augatlos", -- from Battle for Wesnoth
		"male", "Augatol", -- from Battle for Wesnoth
		"male", "Augatsil", -- from Battle for Wesnoth
		"male", "Augatsol", -- from Battle for Wesnoth
		"male", "Augcatas", -- from Battle for Wesnoth
		"male", "Augcatil", -- from Battle for Wesnoth
		"male", "Augcatis", -- from Battle for Wesnoth
		"male", "Augcatol", -- from Battle for Wesnoth
		"male", "Augcatsil", -- from Battle for Wesnoth
		"male", "Augcatus", -- from Battle for Wesnoth
		"male", "Augdras", -- from Battle for Wesnoth
		"male", "Augdris", -- from Battle for Wesnoth
		"male", "Augdrsil", -- from Battle for Wesnoth
		"male", "Augdrus", -- from Battle for Wesnoth
		"male", "Augduras", -- from Battle for Wesnoth
		"male", "Augduril", -- from Battle for Wesnoth
		"male", "Augduring", -- from Battle for Wesnoth
		"male", "Augdurol", -- from Battle for Wesnoth
		"male", "Augdursol", -- from Battle for Wesnoth
		"male", "Augdurus", -- from Battle for Wesnoth
		"male", "Augthail", -- from Battle for Wesnoth
		"male", "Augthais", -- from Battle for Wesnoth
		"male", "Augthalos", -- from Battle for Wesnoth
		"male", "Augthaol", -- from Battle for Wesnoth
		"male", "Aurvang", -- dwarf from Norse mythology
		"male", "Austri", -- dwarf from Norse mythology (name means "the Eastern"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 101; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
		"male", "Bafur", -- dwarf from Norse mythology
		"male", "Baglur", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Bari", -- dwarf from Norse mythology
		"male", "Berling", -- dwarf from Norse mythology
		"male", "Bibung", -- dwarf from Norse mythology
		"male", "Bifur", -- dwarf from Norse mythology
		"male", "Bombor", -- dwarf from Norse mythology
		"male", "Brokk", -- dwarf from Norse mythology who was an expert smith and brother of Eitri
		"male", "Burin", -- dwarf from Battle for Wesnoth: The Rise of Wesnoth
		"male", "Dain", -- dwarven mastersmith from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 100.
		"male", "Delling", -- dwarf from Norse mythology
		"male", "Delling", -- dwarf from Norse mythology
		"male", "Dolgthvari", -- dwarf from Norse mythology
		"male", "Dori", -- dwarf from Norse mythology
		"male", "Draupnir", -- dwarf from Norse mythology
		"male", "Duf", -- dwarf from Norse mythology
		"male", "Dulaithil", -- from Battle for Wesnoth
		"male", "Dulaithing", -- from Battle for Wesnoth
		"male", "Dulaithlos", -- from Battle for Wesnoth
		"male", "Dulaithsil", -- from Battle for Wesnoth
		"male", "Dulaithsol", -- from Battle for Wesnoth
		"male", "Dulalas", -- from Battle for Wesnoth
		"male", "Dulaling", -- from Battle for Wesnoth
		"male", "Dulalis", -- from Battle for Wesnoth
		"male", "Dulalsil", -- from Battle for Wesnoth
		"male", "Dulatil", -- from Battle for Wesnoth
		"male", "Dulating", -- from Battle for Wesnoth
		"male", "Dulatol", -- from Battle for Wesnoth
		"male", "Dulatsol", -- from Battle for Wesnoth
		"male", "Dulatus", -- from Battle for Wesnoth
		"male", "Dulcatil", -- from Battle for Wesnoth
		"male", "Dulcating", -- from Battle for Wesnoth
		"male", "Dulcatlos", -- from Battle for Wesnoth
		"male", "Dulcatol", -- from Battle for Wesnoth
		"male", "Dulcatsil", -- from Battle for Wesnoth
		"male", "Dulcatsol", -- from Battle for Wesnoth
		"male", "Dulcatulos", -- from Battle for Wesnoth: The Hammer of Thursagan
		"male", "Duldril", -- from Battle for Wesnoth
		"male", "Duldris", -- from Battle for Wesnoth
		"male", "Duldrlos", -- from Battle for Wesnoth
		"male", "Duldrol", -- from Battle for Wesnoth
		"male", "Duldrsil", -- from Battle for Wesnoth
		"male", "Duldrus", -- from Battle for Wesnoth
		"male", "Dulduras", -- from Battle for Wesnoth
		"male", "Dulduring", -- from Battle for Wesnoth
		"male", "Duldursil", -- from Battle for Wesnoth
		"male", "Duldurus", -- from Battle for Wesnoth
		"male", "Dulsi", -- dwarf from Norse mythology; not entirely clear if this is the name of a particular dwarf, or if it means "dwarf"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 109.
		"male", "Dulthalos", -- from Battle for Wesnoth
		"male", "Dulthasil", -- from Battle for Wesnoth
		"male", "Dulthasol", -- from Battle for Wesnoth
		"male", "Dulthaus", -- from Battle for Wesnoth
		"male", "Durahn", -- "Durâhn"; from Dyson Logos' The Tomb of Durâhn Oakenshield, which the author agreed to release under the GPLv2
		"male", "Durin", -- dwarf from Norse mythology who was the deputy of Modsognir
		"male", "Dursil", -- dwarf from Battle for Wesnoth: The Rise of Wesnoth
		"male", "Durstorn", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Dvalin", -- dwarf from Norse mythology; gave the knowledge of runes to the dwarves; one of the four who crafted the Necklace of the Brisings
		"male", "Eggerich", -- dwarf from German sagas
		"male", "Eikinskjaldi", -- dwarf from Norse mythology
		"male", "Eitri", -- dwarf from Norse mythology; expert smith and brother of Brokk
		"male", "Fal", -- dwarf from Norse mythology
		"male", "Fid", -- dwarf from Norse mythology
		"male", "Fili", -- dwarf from Norse mythology
		"male", "Fjalar", -- dwarf from Norse mythology who, with the help of his brother Galar, brew Kvasir's blood into the Mead of Poetry
		"male", "Frag", -- dwarf from Norse mythology
		"male", "Frar", -- dwarf from Norse mythology
		"male", "Frosti", -- dwarf from Norse mythology
		"male", "Fundin", -- dwarf from Norse mythology
		"male", "Galar", -- dwarf from Norse mythology who, with the help of his brother Fjalar, brew Kvasir's blood into the Mead of Poetry
		"male", "Gandalf", -- dwarf from Norse mythology
		"male", "Ginnar", -- dwarf from Norse mythology
		"male", "Glamaithil", -- from Battle for Wesnoth
		"male", "Glamaithis", -- from Battle for Wesnoth
		"male", "Glamaithol", -- from Battle for Wesnoth
		"male", "Glamaithsol", -- from Battle for Wesnoth
		"male", "Glamalil", -- from Battle for Wesnoth
		"male", "Glamaling", -- from Battle for Wesnoth
		"male", "Glamalis", -- from Battle for Wesnoth
		"male", "Glamallos", -- from Battle for Wesnoth
		"male", "Glamalsil", -- from Battle for Wesnoth
		"male", "Glamalus", -- from Battle for Wesnoth
		"male", "Glamatil", -- from Battle for Wesnoth
		"male", "Glamatus", -- from Battle for Wesnoth
		"male", "Glamcatas", -- from Battle for Wesnoth
		"male", "Glamcatil", -- from Battle for Wesnoth
		"male", "Glamcating", -- from Battle for Wesnoth
		"male", "Glamcatsil", -- from Battle for Wesnoth
		"male", "Glamcatus", -- from Battle for Wesnoth
		"male", "Glamdras", -- from Battle for Wesnoth
		"male", "Glamdril", -- from Battle for Wesnoth
		"male", "Glamdrlos", -- from Battle for Wesnoth
		"male", "Glamdrsol", -- from Battle for Wesnoth
		"male", "Glamduras", -- from Battle for Wesnoth
		"male", "Glamduril", -- from Battle for Wesnoth
		"male", "Glamduring", -- from Battle for Wesnoth
		"male", "Glamduris", -- from Battle for Wesnoth
		"male", "Glamdursol", -- from Battle for Wesnoth
		"male", "Glamthaas", -- from Battle for Wesnoth
		"male", "Glamthaol", -- from Battle for Wesnoth
		"male", "Glamthasil", -- from Battle for Wesnoth
		"male", "Glamthasol", -- from Battle for Wesnoth
		"male", "Glamthaus", -- from Battle for Wesnoth
		"male", "Glinar", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Gloin", -- dwarf from Norse mythology
		"male", "Glomin", -- from Battle for Wesnoth
		"male", "Glonoin", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Goldemar", -- dwarf from German sagas
		"male", "Gomaithas", -- from Battle for Wesnoth
		"male", "Gomaithil", -- from Battle for Wesnoth
		"male", "Gomaithol", -- from Battle for Wesnoth
		"male", "Gomaithsol", -- from Battle for Wesnoth
		"male", "Gomalil", -- from Battle for Wesnoth
		"male", "Gomalis", -- from Battle for Wesnoth
		"male", "Gomalus", -- from Battle for Wesnoth
		"male", "Gomatas", -- from Battle for Wesnoth
		"male", "Gomatil", -- from Battle for Wesnoth
		"male", "Gomating", -- from Battle for Wesnoth
		"male", "Gomatis", -- from Battle for Wesnoth
		"male", "Gomatlos", -- from Battle for Wesnoth
		"male", "Gomatol", -- from Battle for Wesnoth
		"male", "Gomcatil", -- from Battle for Wesnoth
		"male", "Gomcatis", -- from Battle for Wesnoth
		"male", "Gomcatlos", -- from Battle for Wesnoth
		"male", "Gomdras", -- from Battle for Wesnoth
		"male", "Gomdril", -- from Battle for Wesnoth
		"male", "Gomdring", -- from Battle for Wesnoth
		"male", "Gomdris", -- from Battle for Wesnoth
		"male", "Gomdrol", -- from Battle for Wesnoth
		"male", "Gomdrsil", -- from Battle for Wesnoth
		"male", "Gomduris", -- from Battle for Wesnoth
		"male", "Gomdurlos", -- from Battle for Wesnoth
		"male", "Gomdursil", -- from Battle for Wesnoth
		"male", "Gomdursol", -- from Battle for Wesnoth
		"male", "Gomdurus", -- from Battle for Wesnoth
		"male", "Gomthaas", -- from Battle for Wesnoth
		"male", "Gomthalos", -- from Battle for Wesnoth
		"male", "Gomthasol", -- from Battle for Wesnoth
		"male", "Grerr", -- dwarf from Norse mythology
		"male", "Grimnir", -- dwarven pathfinder from Battle for Wesnoth: Under the Burning Suns
		"male", "Hamel", -- dwarf from Battle for Wesnoth: Northern Rebirth and Battle for Wesnoth: The Hammer of Thursagan
		"male", "Hannar", -- "Hannarr"; dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 239.
		"male", "Har", -- dwarf from Norse mythology
		"male", "Haur", -- dwarf from Norse mythology
		"male", "Heptifili", -- dwarf from Norse mythology
		"male", "Hledjolf", -- dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.
		"male", "Hornbori", -- dwarf from Norse mythology
		"male", "Hugstari", -- dwarf from Norse mythology
		"male", "Ingi", -- dwarf from Norse mythology
		"male", "Iri", -- dwarf from Norse mythology
		"male", "Isuldan", -- from Dyson Logos' The Tomb of Durâhn Oakenshield, which the author agreed to release under the GPLv2
		"male", "Ivaldi", -- dwarf from Norse mythology whose sons were mastersmiths; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63.
		"male", "Jari", -- dwarf from Norse mythology
		"male", "Karrag", -- dwarf from Battle for Wesnoth: The Hammer of Thursagan
		"male", "Kili", -- dwarf from Norse mythology
		"male", "Kinan", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Kuhnar", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Laurin", -- dwarf from German sagas
		"male", "Lit", -- dwarf from Norse mythology
		"male", "Lofar", -- dwarf from Norse mythology who was a descendant of the settlers of Joruvellir
		"male", "Loni", -- dwarf from Norse mythology
		"male", "Mjodvitnir", -- dwarf from Norse mythology
		"male", "Modsognir", -- dwarf from Norse mythology who was the first dwarf
		"male", "Nabbi", -- dwarven mastersmith from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 100.
		"male", "Nain", -- dwarf from Norse mythology
		"male", "Naraithil", -- from Battle for Wesnoth
		"male", "Naraithing", -- from Battle for Wesnoth
		"male", "Naraithol", -- from Battle for Wesnoth
		"male", "Naraithsil", -- from Battle for Wesnoth
		"male", "Naraithsol", -- from Battle for Wesnoth
		"male", "Naraithus", -- from Battle for Wesnoth
		"male", "Naralas", -- from Battle for Wesnoth
		"male", "Naralil", -- from Battle for Wesnoth
		"male", "Naralsil", -- from Battle for Wesnoth
		"male", "Naralus", -- from Battle for Wesnoth
		"male", "Naratlos", -- from Battle for Wesnoth
		"male", "Naratol", -- from Battle for Wesnoth
		"male", "Naratsil", -- from Battle for Wesnoth
		"male", "Narcating", -- from Battle for Wesnoth
		"male", "Narcatis", -- from Battle for Wesnoth
		"male", "Narcatol", -- from Battle for Wesnoth
		"male", "Narcatsil", -- from Battle for Wesnoth
		"male", "Narcatsol", -- from Battle for Wesnoth
		"male", "Nardras", -- from Battle for Wesnoth
		"male", "Nardril", -- from Battle for Wesnoth
		"male", "Nardring", -- from Battle for Wesnoth
		"male", "Nardris", -- from Battle for Wesnoth
		"male", "Nardrol", -- from Battle for Wesnoth
		"male", "Nardrsil", -- from Battle for Wesnoth
		"male", "Nardrsol", -- from Battle for Wesnoth
		"male", "Nardrus", -- from Battle for Wesnoth
		"male", "Narduras", -- from Battle for Wesnoth
		"male", "Narduril", -- from Battle for Wesnoth
		"male", "Nardurol", -- from Battle for Wesnoth
		"male", "Narthalos", -- from Battle for Wesnoth
		"male", "Narthaol", -- from Battle for Wesnoth
		"male", "Nefi", -- dwarf from Norse mythology
		"male", "Neglur", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Nidi", -- dwarf from Norse mythology
		"male", "Nidjung", -- dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
		"male", "Niping", -- dwarf from Norse mythology
		"male", "Noiraran", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Nordri", -- dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 101.
		"male", "Nori", -- dwarf from Norse mythology
		"male", "Nyi", -- dwarf from Norse mythology
		"male", "Nyr", -- dwarf from Norse mythology
		"male", "Nyrad", -- dwarf from Norse mythology
		"male", "Oin", -- dwarf from Norse mythology who was the father of Andvari
		"male", "Olurf", -- dwarf from Battle for Wesnoth: The Legend of Wesmere
		"male", "Ori", -- dwarf from Norse mythology
		"male", "Pelaithas", -- from Battle for Wesnoth
		"male", "Pelaithil", -- from Battle for Wesnoth
		"male", "Pelaithing", -- from Battle for Wesnoth
		"male", "Pelaithis", -- from Battle for Wesnoth
		"male", "Pelaithlos", -- from Battle for Wesnoth
		"male", "Pelaithol", -- from Battle for Wesnoth
		"male", "Pelaithsil", -- from Battle for Wesnoth
		"male", "Pelaithsol", -- from Battle for Wesnoth
		"male", "Pelalil", -- from Battle for Wesnoth
		"male", "Pelaling", -- from Battle for Wesnoth
		"male", "Pelalis", -- from Battle for Wesnoth
		"male", "Pelalsil", -- from Battle for Wesnoth
		"male", "Pelalsol", -- from Battle for Wesnoth
		"male", "Pelalus", -- from Battle for Wesnoth
		"male", "Pelatil", -- from Battle for Wesnoth
		"male", "Pelating", -- from Battle for Wesnoth
		"male", "Pelatis", -- from Battle for Wesnoth
		"male", "Pelatol", -- from Battle for Wesnoth
		"male", "Pelatsil", -- from Battle for Wesnoth
		"male", "Pelatus", -- from Battle for Wesnoth
		"male", "Pelcating", -- from Battle for Wesnoth
		"male", "Pelcatlos", -- from Battle for Wesnoth
		"male", "Pelcatol", -- from Battle for Wesnoth
		"male", "Pelcatsil", -- from Battle for Wesnoth
		"male", "Peldras", -- from Battle for Wesnoth
		"male", "Peldril", -- from Battle for Wesnoth
		"male", "Peldrsol", -- from Battle for Wesnoth
		"male", "Peldrus", -- from Battle for Wesnoth
		"male", "Pelduril", -- from Battle for Wesnoth
		"male", "Pelduring", -- from Battle for Wesnoth
		"male", "Pelduris", -- from Battle for Wesnoth
		"male", "Peldurol", -- from Battle for Wesnoth
		"male", "Peldursol", -- from Battle for Wesnoth
		"male", "Peldurus", -- from Battle for Wesnoth
		"male", "Pelthaas", -- from Battle for Wesnoth
		"male", "Pelthail", -- from Battle for Wesnoth
		"male", "Pelthasil", -- from Battle for Wesnoth
		"male", "Radsvid", -- dwarf from Norse mythology
		"male", "Regin", -- skilled smith; in Norse mythology was the brother of the dragon Fafnir
		"male", "Rekk", -- dwarf from Norse mythology
		"male", "Relgorn", -- dwarf from Battle for Wesnoth: Heir to the Throne and Battle for Wesnoth: Delfador's Memoirs
		"male", "Rugnur", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Rynan", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Skavid", -- dwarf from Norse mythology
		"male", "Skirvir", -- dwarf from Norse mythology
		"male", "Solblindi", -- dwarf from Norse mythology
		"male", "Sudri", -- dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 101.
		"male", "Svarin", -- dwarf from Norse mythology
		"male", "Sviar", -- dwarf from Norse mythology
		"male", "Sviur", -- dwarf from Norse mythology
		"male", "Theganli", -- dwarf from Battle for Wesnoth: The Sceptre of Fire; jeweler of Durstorn's clan
		"male", "Thekk", -- dwarf from Norse mythology
		"male", "Thjodrorir", -- a dwarf who knew a charm of power to the gods in Norse mythology
		"male", "Thorin", -- dwarf from Norse mythology
		"male", "Thrain", -- dwarf from Norse mythology
		"male", "Thror", -- dwarf from Norse mythology
		"male", "Thursagan", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Trithaithas", -- from Battle for Wesnoth
		"male", "Trithaithil", -- from Battle for Wesnoth
		"male", "Trithaithis", -- from Battle for Wesnoth
		"male", "Trithaithlos", -- from Battle for Wesnoth
		"male", "Trithaithol", -- from Battle for Wesnoth
		"male", "Trithaithsil", -- from Battle for Wesnoth
		"male", "Trithaithsol", -- from Battle for Wesnoth
		"male", "Trithaithus", -- from Battle for Wesnoth
		"male", "Trithalis", -- from Battle for Wesnoth
		"male", "Trithalol", -- from Battle for Wesnoth
		"male", "Trithatas", -- from Battle for Wesnoth
		"male", "Trithatil", -- from Battle for Wesnoth
		"male", "Trithatlos", -- from Battle for Wesnoth
		"male", "Trithatsol", -- from Battle for Wesnoth
		"male", "Trithcatlos", -- from Battle for Wesnoth
		"male", "Trithcatsol", -- from Battle for Wesnoth
		"male", "Trithcatus", -- from Battle for Wesnoth
		"male", "Trithdril", -- from Battle for Wesnoth
		"male", "Trithdring", -- from Battle for Wesnoth
		"male", "Trithdris", -- from Battle for Wesnoth
		"male", "Trithdrlos", -- from Battle for Wesnoth
		"male", "Trithdrol", -- from Battle for Wesnoth
		"male", "Trithdrsol", -- from Battle for Wesnoth
		"male", "Trithdrus", -- from Battle for Wesnoth
		"male", "Trithduril", -- from Battle for Wesnoth
		"male", "Trithduring", -- from Battle for Wesnoth
		"male", "Trithdurlos", -- from Battle for Wesnoth
		"male", "Trithdurol", -- from Battle for Wesnoth
		"male", "Trithdursil", -- from Battle for Wesnoth
		"male", "Trithdurus", -- from Battle for Wesnoth
		"male", "Triththaas", -- from Battle for Wesnoth
		"male", "Triththail", -- from Battle for Wesnoth
		"male", "Triththaing", -- from Battle for Wesnoth
		"male", "Triththasol", -- from Battle for Wesnoth
		"male", "Triththaus", -- from Battle for Wesnoth
		"male", "Tuta", -- dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 645.
		"male", "Ulrek", -- dwarf from Battle for Wesnoth: Delfador's Memoirs
		"male", "Uni", -- dwarf from Norse mythology
		"male", "Vali", -- dwarf from Norse mythology
		"male", "Var", -- dwarf from Norse mythology
		"male", "Vegdrasil", -- dwarf from Norse mythology
		"male", "Vestri", -- dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 101.
		"male", "Vig", -- dwarf from Norse mythology
		"male", "Vigdvalin", -- "Víg-dvalinn"; dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.
		"male", "Vindalf", -- dwarf from Norse mythology
		"male", "Virfir", -- dwarf from Norse mythology
		"male", "Vit", -- dwarf from Norse mythology
	},
	SettlementNames = {
		"Kal Kartha", -- from Battle for Wesnoth: The Hammer of Thursagan
		"Knalga", -- from Battle for Wesnoth
		"Lyr"
	},
	ShipNames = {
--		"Skidbladnir" -- ship built by dwarves in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 101.
	},
	HistoricalTechnologies = {
		"upgrade-dwarven-wood-plow", -3000, -- give plow technology to the dwarven factions
		"upgrade-dwarven-broad-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-shield-1", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-sharp-throwing-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-masonry", 25, -- dwarves already had castles built of stone masonry by then
		"upgrade-dwarven-coinage", 400, -- the dwarves should already have Coinage technology by then
		"upgrade-dwarven-great-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-shield-2", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-bearded-throwing-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-ballista-bolt-1", 550, -- late iron age technologies already obtained by the dwarves by this point
	}
})

DefineCivilization("elf", {
	Display = "Elf",
	Visible = true,
	Species = "elf",
	ParentCivilization = "neutral",
--	Language = "elven",
	Adjective = "Elven",
	Playable = false,
	DefaultColor = "teal",
	ButtonIcons = {
		"move", "icon-gnomish-boots",
		"stop", "icon-germanic-wooden-oblong-shield",
		"attack", "icon-germanic-short-sword",
		"patrol", "icon-germanic-patrol-land",
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-germanic-return-goods"
	},
	UIFillers = {
		"germanic/ui/filler_bottom.png", 380, -181,
		"germanic/ui/resource.png", 0, 0,
		"germanic/ui/buttonpanel.png", -256, -200,
		"germanic/ui/infopanel.png", 0, -200
	},
	Description = "The lush world of Alfheim contains a myriad forests, many of which are inhabited by elves. Being a subtle folk, elves hold magical skills in great steem, and they are more prone to intrigue than open warfare.",
	Background = "The elves of Wyrmsun incorporate elements of both the elves of Norse mythology and the Celtic fairies. This follows the amalgamation of the two types of beings in English folklore.",
	PersonalNames = {
		"female", "Argante", -- Elven Queen whom King Arthur met; described as beautiful; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 90.
		"male", "Aendan",
		"male", "Amadrieriand", -- from Battle for Wesnoth
		"male", "Amáril", -- from Battle for Wesnoth
		"male", "Amelad", -- from Battle for Wesnoth
		"male", "Ameldor", -- from Battle for Wesnoth
		"male", "Amendel", -- from Battle for Wesnoth
		"male", "Ameng", -- from Battle for Wesnoth
		"male", "Amilmaldur", -- from Battle for Wesnoth
		"male", "Amilmalith", -- from Battle for Wesnoth
		"male", "Amilmandir", -- from Battle for Wesnoth
		"male", "Amind", -- from Battle for Wesnoth
		"male", "Amiol", -- from Battle for Wesnoth
		"male", "Amiorion", -- from Battle for Wesnoth
		"male", "Amithrarion", -- from Battle for Wesnoth
		"male", "Amóldor", -- from Battle for Wesnoth
		"male", "Amorfimir", -- from Battle for Wesnoth
		"male", "Amorfir", -- from Battle for Wesnoth
		"male", "Amowyn", -- from Battle for Wesnoth
		"male", "Amulas", -- from Battle for Wesnoth
		"male", "Amundil", -- from Battle for Wesnoth
		"male", "Anán", -- from Battle for Wesnoth
		"male", "Anebrin", -- from Battle for Wesnoth
		"male", "Anebrir", -- from Battle for Wesnoth
		"male", "Anémbor", -- from Battle for Wesnoth
		"male", "Anénduil", -- from Battle for Wesnoth
		"male", "Anerion", -- from Battle for Wesnoth
		"male", "Anilad", -- from Battle for Wesnoth
		"male", "Anil-Gawyn", -- from Battle for Wesnoth
		"male", "Anilmambor", -- from Battle for Wesnoth
		"male", "Anilmariand", -- from Battle for Wesnoth
		"male", "Anior", -- from Battle for Wesnoth
		"male", "Anithranduil", -- from Battle for Wesnoth
		"male", "Anol", -- from Battle for Wesnoth
		"male", "Anon", -- from Battle for Wesnoth
		"male", "Anorfing", -- from Battle for Wesnoth
		"male", "Anundil", -- from Battle for Wesnoth
		"male", "Asaeri",
		"male", "Belán", -- from Battle for Wesnoth
		"male", "Belandil", -- from Battle for Wesnoth
		"male", "Belarandel", -- from Battle for Wesnoth
		"male", "Belel", -- from Battle for Wesnoth
		"male", "Belén", -- from Battle for Wesnoth
		"male", "Belil-Gandil", -- from Battle for Wesnoth
		"male", "Belilmand", -- from Battle for Wesnoth
		"male", "Belilmang", -- from Battle for Wesnoth
		"male", "Beliondil", -- from Battle for Wesnoth
		"male", "Beliril", -- from Battle for Wesnoth
		"male", "Belithraldor", -- from Battle for Wesnoth
		"male", "Belithrawyn", -- from Battle for Wesnoth
		"male", "Belólad", -- from Battle for Wesnoth
		"male", "Belómir", -- from Battle for Wesnoth
		"male", "Belondel", -- from Battle for Wesnoth
		"male", "Belyrion", -- from Battle for Wesnoth
		"male", "Cadriembor", -- from Battle for Wesnoth
		"male", "Cadrieriand", -- from Battle for Wesnoth
		"male", "Cálad", -- from Battle for Wesnoth
		"male", "Caladrielas", -- from Battle for Wesnoth
		"male", "Calándel", -- from Battle for Wesnoth
		"male", "Caldur", -- from Battle for Wesnoth
		"male", "Cáldur", -- from Battle for Wesnoth
		"male", "Calebrindel", -- from Battle for Wesnoth
		"male", "Calebrindir", -- from Battle for Wesnoth
		"male", "Calénduil", -- from Battle for Wesnoth
		"male", "Calil-Gandir", -- from Battle for Wesnoth
		"male", "Calil-Gawyn", -- from Battle for Wesnoth
		"male", "Calioriand", -- from Battle for Wesnoth
		"male", "Caliril", -- from Battle for Wesnoth
		"male", "Calónduil", -- from Battle for Wesnoth
		"male", "Caloril", -- from Battle for Wesnoth
		"male", "Cándir", -- from Battle for Wesnoth
		"male", "Canduil", -- from Battle for Wesnoth
		"male", "Caraldur", -- from Battle for Wesnoth
		"male", "Carang", -- from Battle for Wesnoth
		"male", "Célad", -- from Battle for Wesnoth
		"male", "Celadrieriand", -- from Battle for Wesnoth
		"male", "Celang", -- from Battle for Wesnoth
		"male", "Celaral", -- from Battle for Wesnoth
		"male", "Celarandil", -- from Battle for Wesnoth
		"male", "Celáriand", -- from Battle for Wesnoth
		"male", "Celebririon", -- from Battle for Wesnoth
		"male", "Celelas", -- from Battle for Wesnoth
		"male", "Celendel", -- from Battle for Wesnoth
		"male", "Celér", -- from Battle for Wesnoth
		"male", "Celilmalas", -- from Battle for Wesnoth
		"male", "Celiondir", -- from Battle for Wesnoth
		"male", "Celior", -- from Battle for Wesnoth
		"male", "Celiorion", -- from Battle for Wesnoth
		"male", "Celong", -- from Battle for Wesnoth
		"male", "Celór", -- from Battle for Wesnoth
		"male", "Celóril", -- from Battle for Wesnoth
		"male", "Celorion", -- from Battle for Wesnoth
		"male", "Celundir", -- from Battle for Wesnoth
		"male", "Celuwyn", -- from Battle for Wesnoth
		"male", "Celyndel", -- from Battle for Wesnoth
		"male", "Cénduil", -- from Battle for Wesnoth
		"male", "Cindil", -- from Battle for Wesnoth
		"male", "Ciong", -- from Battle for Wesnoth
		"male", "Cithralad", -- from Battle for Wesnoth
		"male", "Cithraldur", -- from Battle for Wesnoth
		"male", "Cithrand", -- from Battle for Wesnoth
		"male", "Cithrandel", -- from Battle for Wesnoth
		"male", "Cithraril", -- from Battle for Wesnoth
		"male", "Col", -- from Battle for Wesnoth
		"male", "Corfil", -- from Battle for Wesnoth
		"male", "Corfildur", -- from Battle for Wesnoth
		"male", "Cówyn", -- from Battle for Wesnoth
		"male", "Crintil",
		"male", "Cun", -- from Battle for Wesnoth
		"male", "Cundir", -- from Battle for Wesnoth
		"male", "Cylas", -- from Battle for Wesnoth
		"male", "Dain",
		"male", "Delán", -- from Battle for Wesnoth
		"male", "Delánd", -- from Battle for Wesnoth
		"male", "Delandel", -- from Battle for Wesnoth
		"male", "Delaraldur", -- from Battle for Wesnoth
		"male", "Deláril", -- from Battle for Wesnoth
		"male", "Delawyn", -- from Battle for Wesnoth
		"male", "Deléng", -- from Battle for Wesnoth
		"male", "Delilmaldor", -- from Battle for Wesnoth
		"male", "Deliol", -- from Battle for Wesnoth
		"male", "Delithrar", -- from Battle for Wesnoth
		"male", "Deliwyn", -- from Battle for Wesnoth
		"male", "Delóldor", -- from Battle for Wesnoth
		"male", "Delorfilad", -- from Battle for Wesnoth
		"male", "Delorfilith", -- from Battle for Wesnoth
		"male", "Delorion", -- from Battle for Wesnoth
		"male", "Delundil", -- from Battle for Wesnoth
		"male", "Ealin",
		"male", "Eäradriendel", -- from Battle for Wesnoth
		"male", "Eäradrier", -- from Battle for Wesnoth
		"male", "Eäránduil", -- from Battle for Wesnoth
		"male", "Eäraralad", -- from Battle for Wesnoth
		"male", "Eärebrindel", -- from Battle for Wesnoth
		"male", "Eäréldor", -- from Battle for Wesnoth
		"male", "Eäreng", -- from Battle for Wesnoth
		"male", "Eärérion", -- from Battle for Wesnoth
		"male", "Eärithrandil", -- from Battle for Wesnoth
		"male", "Eäromir", -- from Battle for Wesnoth
		"male", "Eärorfiriand", -- from Battle for Wesnoth
		"male", "Eäryldur", -- from Battle for Wesnoth
		"male", "Eäryriand", -- from Battle for Wesnoth
		"male", "Egil", -- elven archer from Norse mythology, brother of Slagfid and Volund
		"male", "Eladrieng", -- from Battle for Wesnoth
		"male", "Elálith", -- from Battle for Wesnoth
		"male", "Elánd", -- from Battle for Wesnoth
		"male", "Elándil", -- from Battle for Wesnoth
		"male", "Elebrildor", -- from Battle for Wesnoth
		"male", "Elebrindel", -- from Battle for Wesnoth
		"male", "Elebriril", -- from Battle for Wesnoth
		"male", "Elélas", -- from Battle for Wesnoth
		"male", "Elémbor", -- from Battle for Wesnoth
		"male", "Elemir", -- from Battle for Wesnoth
		"male", "Elen", -- from Battle for Wesnoth
		"male", "Elil-Garil", -- from Battle for Wesnoth
		"male", "Elilmaldur", -- from Battle for Wesnoth
		"male", "Eliomir", -- from Battle for Wesnoth
		"male", "Eliondil", -- from Battle for Wesnoth
		"male", "Elolas", -- from Battle for Wesnoth
		"male", "Elólas", -- from Battle for Wesnoth
		"male", "Elor", -- from Battle for Wesnoth
		"male", "Elorfilad", -- from Battle for Wesnoth
		"male", "Elradrien", -- from Battle for Wesnoth
		"male", "Elralith", -- from Battle for Wesnoth
		"male", "Elran", -- from Battle for Wesnoth
		"male", "Elreldur", -- from Battle for Wesnoth
		"male", "Elrilmand", -- from Battle for Wesnoth
		"male", "Elrioldor", -- from Battle for Wesnoth
		"male", "Elriolith", -- from Battle for Wesnoth
		"male", "Elrithralith", -- from Battle for Wesnoth
		"male", "Elrithranduil", -- from Battle for Wesnoth
		"male", "Elrorfir", -- from Battle for Wesnoth
		"male", "Elval", -- from Battle for Wesnoth
		"male", "Elvandir", -- from Battle for Wesnoth
		"male", "Elvaramir", -- from Battle for Wesnoth
		"male", "Elváwyn", -- from Battle for Wesnoth
		"male", "Elvebrind", -- from Battle for Wesnoth
		"male", "Elvebrindel", -- from Battle for Wesnoth
		"male", "Elvélith", -- from Battle for Wesnoth
		"male", "Elvémir", -- from Battle for Wesnoth
		"male", "Elverion", -- from Battle for Wesnoth
		"male", "Elvil-Garion", -- from Battle for Wesnoth
		"male", "Elvilmaldur", -- from Battle for Wesnoth
		"male", "Elvilmaril", -- from Battle for Wesnoth
		"male", "Elvioldur", -- from Battle for Wesnoth
		"male", "Elvombor", -- from Battle for Wesnoth
		"male", "Elvónduil", -- from Battle for Wesnoth
		"male", "Elvorfimir", -- from Battle for Wesnoth
		"male", "Elvorfiriand", -- from Battle for Wesnoth
		"male", "Elvorfiril", -- from Battle for Wesnoth
		"male", "Elvóriand", -- from Battle for Wesnoth
		"male", "Elvund", -- from Battle for Wesnoth
		"male", "Elyldor", -- from Battle for Wesnoth
		"male", "Elyrion", -- from Battle for Wesnoth
		"male", "Eowambor", -- from Battle for Wesnoth
		"male", "Eowanduil", -- from Battle for Wesnoth
		"male", "Eowar", -- from Battle for Wesnoth
		"male", "Eowaraldor", -- from Battle for Wesnoth
		"male", "Eowaran", -- from Battle for Wesnoth
		"male", "Eowarar", -- from Battle for Wesnoth
		"male", "Eowariand", -- from Battle for Wesnoth
		"male", "Eowarion", -- from Battle for Wesnoth
		"male", "Eowebrind", -- from Battle for Wesnoth
		"male", "Eowémir", -- from Battle for Wesnoth
		"male", "Eowil-Garion", -- from Battle for Wesnoth
		"male", "Eowimbor", -- from Battle for Wesnoth
		"male", "Eowiomir", -- from Battle for Wesnoth
		"male", "Eowithrawyn", -- from Battle for Wesnoth
		"male", "Eowóldur", -- from Battle for Wesnoth
		"male", "Eoworfildor", -- from Battle for Wesnoth
		"male", "Eowówyn", -- from Battle for Wesnoth
		"male", "Eowylas", -- from Battle for Wesnoth
		"male", "Erlornas",
		"male", "Fadriendel", -- from Battle for Wesnoth
		"male", "Fandel", -- from Battle for Wesnoth
		"male", "Farandir", -- from Battle for Wesnoth
		"male", "Fáwyn", -- from Battle for Wesnoth
		"male", "Fendel", -- from Battle for Wesnoth
		"male", "Fer", -- from Battle for Wesnoth
		"male", "Filman", -- from Battle for Wesnoth
		"male", "Fioril", -- from Battle for Wesnoth
		"male", "Fithraril", -- from Battle for Wesnoth
		"male", "Forfilas", -- from Battle for Wesnoth
		"male", "Fyrion", -- from Battle for Wesnoth
		"male", "Gadriendil", -- from Battle for Wesnoth
		"male", "Gadrieng", -- from Battle for Wesnoth
		"male", "Gaelir",
		"male", "Gaenlar",
		"male", "Galadrieldor", -- from Battle for Wesnoth
		"male", "Galálad", -- from Battle for Wesnoth
		"male", "Galálas", -- from Battle for Wesnoth
		"male", "Galalith", -- from Battle for Wesnoth
		"male", "Galar", -- from Battle for Wesnoth
		"male", "Galelas", -- from Battle for Wesnoth
		"male", "Galeldur", -- from Battle for Wesnoth
		"male", "Galelith", -- from Battle for Wesnoth
		"male", "Galémbor", -- from Battle for Wesnoth
		"male", "Galithrariand", -- from Battle for Wesnoth
		"male", "Galoldur", -- from Battle for Wesnoth
		"male", "Galtrid",
		"male", "Galuldur", -- from Battle for Wesnoth
		"male", "Galur", -- from Battle for Wesnoth
		"male", "Galurion", -- from Battle for Wesnoth
		"male", "Gambor", -- from Battle for Wesnoth
		"male", "Gán", -- from Battle for Wesnoth
		"male", "Ganduil", -- from Battle for Wesnoth
		"male", "Garaldor", -- from Battle for Wesnoth
		"male", "Gararil", -- from Battle for Wesnoth
		"male", "Gelad", -- from Battle for Wesnoth
		"male", "Géril", -- from Battle for Wesnoth
		"male", "Gil-Gandel", -- from Battle for Wesnoth
		"male", "Gil-Gang", -- from Battle for Wesnoth
		"male", "Giombor", -- from Battle for Wesnoth
		"male", "Githral", -- from Battle for Wesnoth
		"male", "Githralad", -- from Battle for Wesnoth
		"male", "Gladriendil", -- from Battle for Wesnoth
		"male", "Glal", -- from Battle for Wesnoth
		"male", "Glámbor", -- from Battle for Wesnoth
		"male", "Glandil", -- from Battle for Wesnoth
		"male", "Glarang", -- from Battle for Wesnoth
		"male", "Glararil", -- from Battle for Wesnoth
		"male", "Glildur",
		"male", "Glilmal", -- from Battle for Wesnoth
		"male", "Glimir", -- from Battle for Wesnoth
		"male", "Glinan",
		"male", "Glindur",
		"male", "Glior", -- from Battle for Wesnoth
		"male", "Glólas", -- from Battle for Wesnoth
		"male", "Gloldor", -- from Battle for Wesnoth
		"male", "Glómir", -- from Battle for Wesnoth
		"male", "Glon", -- from Battle for Wesnoth
		"male", "Glul", -- from Battle for Wesnoth
		"male", "Golad", -- from Battle for Wesnoth
		"male", "Gor", -- from Battle for Wesnoth
		"male", "Gumbor", -- from Battle for Wesnoth
		"male", "Gyl", -- from Battle for Wesnoth
		"male", "Gymbor", -- from Battle for Wesnoth
		"male", "Gyn", -- from Battle for Wesnoth
		"male", "Harariand", -- from Battle for Wesnoth
		"male", "Háriand", -- from Battle for Wesnoth
		"male", "Hebril", -- from Battle for Wesnoth
		"male", "Hemir", -- from Battle for Wesnoth
		"male", "Hénduil", -- from Battle for Wesnoth
		"male", "Hilas", -- from Battle for Wesnoth
		"male", "Hil-Garion", -- from Battle for Wesnoth
		"male", "Hilmariand", -- from Battle for Wesnoth
		"male", "Hiong", -- from Battle for Wesnoth
		"male", "Hirion", -- from Battle for Wesnoth
		"male", "Hithrandel", -- from Battle for Wesnoth
		"male", "Horfilad", -- from Battle for Wesnoth
		"male", "Horfindel", -- from Battle for Wesnoth
		"male", "Hundel", -- from Battle for Wesnoth
		"male", "Hymir", -- from Battle for Wesnoth
		"male", "Hyrion", -- from Battle for Wesnoth
		"male", "Hywyn", -- from Battle for Wesnoth
		"male", "Isadrieng", -- from Battle for Wesnoth
		"male", "Isándir", -- from Battle for Wesnoth
		"male", "Isarandel", -- from Battle for Wesnoth
		"male", "Isarar", -- from Battle for Wesnoth
		"male", "Iselas", -- from Battle for Wesnoth
		"male", "Isér", -- from Battle for Wesnoth
		"male", "Isilmandel", -- from Battle for Wesnoth
		"male", "Isirion", -- from Battle for Wesnoth
		"male", "Isithral", -- from Battle for Wesnoth
		"male", "Isól", -- from Battle for Wesnoth
		"male", "Isóndel", -- from Battle for Wesnoth
		"male", "Isóng", -- from Battle for Wesnoth
		"male", "Isorfilad", -- from Battle for Wesnoth
		"male", "Isorfindir", -- from Battle for Wesnoth
		"male", "Isuwyn", -- from Battle for Wesnoth
		"male", "Isyndel", -- from Battle for Wesnoth
		"male", "Kalenz",
		"male", "Kalnar",
		"male", "Landar",
		"male", "Legal", -- from Battle for Wesnoth
		"male", "Legaran", -- from Battle for Wesnoth
		"male", "Legémir", -- from Battle for Wesnoth
		"male", "Legéril", -- from Battle for Wesnoth
		"male", "Legilad", -- from Battle for Wesnoth
		"male", "Legil-Gal", -- from Battle for Wesnoth
		"male", "Legiondel", -- from Battle for Wesnoth
		"male", "Legithralith", -- from Battle for Wesnoth
		"male", "Legorfindil", -- from Battle for Wesnoth
		"male", "Legorfirion", -- from Battle for Wesnoth
		"male", "Legówyn", -- from Battle for Wesnoth
		"male", "Legyl", -- from Battle for Wesnoth
		"male", "Legyn", -- from Battle for Wesnoth
		"male", "Linduilas", -- from Battle for Wesnoth
		"male", "Lómadrieril", -- from Battle for Wesnoth
		"male", "Lómarand", -- from Battle for Wesnoth
		"male", "Lomarfel",
		"male", "Lómariand", -- from Battle for Wesnoth
		"male", "Lómebrilad", -- from Battle for Wesnoth
		"male", "Lómebrind", -- from Battle for Wesnoth
		"male", "Lómémbor", -- from Battle for Wesnoth
		"male", "Lómilmaril", -- from Battle for Wesnoth
		"male", "Lómiriand", -- from Battle for Wesnoth
		"male", "Lómorfindil", -- from Battle for Wesnoth
		"male", "Lómowyn", -- from Battle for Wesnoth
		"male", "Losnin",
		"male", "Lyndar",
		"male", "Madrieril", -- from Battle for Wesnoth
		"male", "Maldur", -- from Battle for Wesnoth
		"male", "Mánduil", -- from Battle for Wesnoth
		"male", "Maraldur", -- from Battle for Wesnoth
		"male", "Mebrin", -- from Battle for Wesnoth
		"male", "Méng", -- from Battle for Wesnoth
		"male", "Mérion", -- from Battle for Wesnoth
		"male", "Miolith", -- from Battle for Wesnoth
		"male", "Miomir", -- from Battle for Wesnoth
		"male", "Mithrand", -- from Battle for Wesnoth
		"male", "Mondir", -- from Battle for Wesnoth
		"male", "Móndir", -- from Battle for Wesnoth
		"male", "Morfilas", -- from Battle for Wesnoth
		"male", "Morfin", -- from Battle for Wesnoth
		"male", "Morfiriand", -- from Battle for Wesnoth
		"male", "Mylith", -- from Battle for Wesnoth
		"male", "Nadrieldor", -- from Battle for Wesnoth
		"male", "Nalith", -- from Battle for Wesnoth
		"male", "Nán", -- from Battle for Wesnoth
		"male", "Nél", -- from Battle for Wesnoth
		"male", "Nil-Galas", -- from Battle for Wesnoth
		"male", "Nil-Galith", -- from Battle for Wesnoth
		"male", "Nil-Gar", -- from Battle for Wesnoth
		"male", "Nilmar", -- from Battle for Wesnoth
		"male", "Nóndel", -- from Battle for Wesnoth
		"male", "Norfildor", -- from Battle for Wesnoth
		"male", "Norfilith", -- from Battle for Wesnoth
		"male", "Norfindil", -- from Battle for Wesnoth
		"male", "Norfindir", -- from Battle for Wesnoth
		"male", "Numbor", -- from Battle for Wesnoth
		"male", "Nyldur", -- from Battle for Wesnoth
		"male", "Padrieriand", -- from Battle for Wesnoth
		"male", "Padrieril", -- from Battle for Wesnoth
		"male", "Pamir", -- from Battle for Wesnoth
		"male", "Paraldor", -- from Battle for Wesnoth
		"male", "Parariand", -- from Battle for Wesnoth
		"male", "Pilmalad", -- from Battle for Wesnoth
		"male", "Pindir", -- from Battle for Wesnoth
		"male", "Pór", -- from Battle for Wesnoth
		"male", "Porfildur", -- from Battle for Wesnoth
		"male", "Pumbor", -- from Battle for Wesnoth
		"male", "Pyldur", -- from Battle for Wesnoth
		"male", "Raesil",
		"male", "Rebrir", -- from Battle for Wesnoth
		"male", "Réndir", -- from Battle for Wesnoth
		"male", "Rilmandil", -- from Battle for Wesnoth
		"male", "Rithrandil", -- from Battle for Wesnoth
		"male", "Ról", -- from Battle for Wesnoth
		"male", "Róldor", -- from Battle for Wesnoth
		"male", "Roldur", -- from Battle for Wesnoth
		"male", "Róldur", -- from Battle for Wesnoth
		"male", "Rorfilad", -- from Battle for Wesnoth
		"male", "Rorfindil", -- from Battle for Wesnoth
		"male", "Rówyn", -- from Battle for Wesnoth
		"male", "Ryn", -- from Battle for Wesnoth
		"male", "Sadrielas", -- from Battle for Wesnoth
		"male", "Salira",
		"male", "Sebrin", -- from Battle for Wesnoth
		"male", "Sebriril", -- from Battle for Wesnoth
		"male", "Sénd", -- from Battle for Wesnoth
		"male", "Sil-Gal", -- from Battle for Wesnoth
		"male", "Slagfid", -- from Norse mythology, brother of Egil and Volund
		"male", "Sólad", -- from Battle for Wesnoth
		"male", "Sorfind", -- from Battle for Wesnoth
		"male", "Sóriand", -- from Battle for Wesnoth
		"male", "Tadriendir", -- from Battle for Wesnoth
		"male", "Taral", -- from Battle for Wesnoth
		"male", "Taraldur", -- from Battle for Wesnoth
		"male", "Táriand", -- from Battle for Wesnoth
		"male", "Tendel", -- from Battle for Wesnoth
		"male", "Téwyn", -- from Battle for Wesnoth
		"male", "Thradrieriand", -- from Battle for Wesnoth
		"male", "Thrambor", -- from Battle for Wesnoth
		"male", "Thraral", -- from Battle for Wesnoth
		"male", "Threbring", -- from Battle for Wesnoth
		"male", "Thrélad", -- from Battle for Wesnoth
		"male", "Thréldur", -- from Battle for Wesnoth
		"male", "Thril-Gamir", -- from Battle for Wesnoth
		"male", "Thril-Gandir", -- from Battle for Wesnoth
		"male", "Thril-Gar", -- from Battle for Wesnoth
		"male", "Thrilmandel", -- from Battle for Wesnoth
		"male", "Thrimir", -- from Battle for Wesnoth
		"male", "Thrion", -- from Battle for Wesnoth
		"male", "Thrithran", -- from Battle for Wesnoth
		"male", "Throlas", -- from Battle for Wesnoth
		"male", "Thrón", -- from Battle for Wesnoth
		"male", "Thróng", -- from Battle for Wesnoth
		"male", "Thrund", -- from Battle for Wesnoth
		"male", "Thryriand", -- from Battle for Wesnoth
		"male", "Til-Gan", -- from Battle for Wesnoth
		"male", "Tilmalad", -- from Battle for Wesnoth
		"male", "Tilmalas", -- from Battle for Wesnoth
		"male", "Tinandir", -- from Battle for Wesnoth
		"male", "Tinarambor", -- from Battle for Wesnoth
		"male", "Tinarariand", -- from Battle for Wesnoth
		"male", "Tinén", -- from Battle for Wesnoth
		"male", "Tinil-Ganduil", -- from Battle for Wesnoth
		"male", "Tinilmand", -- from Battle for Wesnoth
		"male", "Tinilmawyn", -- from Battle for Wesnoth
		"male", "Tinimir", -- from Battle for Wesnoth
		"male", "Tinindil", -- from Battle for Wesnoth
		"male", "Tinithrar", -- from Battle for Wesnoth
		"male", "Tinoldor", -- from Battle for Wesnoth
		"male", "Tinond", -- from Battle for Wesnoth
		"male", "Tinorfind", -- from Battle for Wesnoth
		"male", "Tinorfiriand", -- from Battle for Wesnoth
		"male", "Tinóriand", -- from Battle for Wesnoth
		"male", "Tinowyn", -- from Battle for Wesnoth
		"male", "Tinun", -- from Battle for Wesnoth
		"male", "Tinyl", -- from Battle for Wesnoth
		"male", "Tion", -- from Battle for Wesnoth
		"male", "Tolas", -- from Battle for Wesnoth
		"male", "Torfildur", -- from Battle for Wesnoth
		"male", "Tówyn", -- from Battle for Wesnoth
		"male", "Tylad", -- from Battle for Wesnoth
		"male", "Unadrieldor", -- from Battle for Wesnoth
		"male", "Unadrier", -- from Battle for Wesnoth
		"male", "Unál", -- from Battle for Wesnoth
		"male", "Unalas", -- from Battle for Wesnoth
		"male", "Unálas", -- from Battle for Wesnoth
		"male", "Unaraldur", -- from Battle for Wesnoth
		"male", "Unaril", -- from Battle for Wesnoth
		"male", "Unárion", -- from Battle for Wesnoth
		"male", "Unebrin", -- from Battle for Wesnoth
		"male", "Unebrind", -- from Battle for Wesnoth
		"male", "Uneldor", -- from Battle for Wesnoth
		"male", "Unil", -- from Battle for Wesnoth
		"male", "Unil-Gan", -- from Battle for Wesnoth
		"male", "Uniolith", -- from Battle for Wesnoth
		"male", "Unioril", -- from Battle for Wesnoth
		"male", "Unólith", -- from Battle for Wesnoth
		"male", "Unombor", -- from Battle for Wesnoth
		"male", "Unóndel", -- from Battle for Wesnoth
		"male", "Unondir", -- from Battle for Wesnoth
		"male", "Unorfildor", -- from Battle for Wesnoth
		"male", "Unorfiril", -- from Battle for Wesnoth
		"male", "Unorfiwyn", -- from Battle for Wesnoth
		"male", "Unulad", -- from Battle for Wesnoth
		"male", "Uradredia",
		"male", "Uradrielas", -- from Battle for Wesnoth
		"male", "Uradrierion", -- from Battle for Wesnoth
		"male", "Urálas", -- from Battle for Wesnoth
		"male", "Urálith", -- from Battle for Wesnoth
		"male", "Urambor", -- from Battle for Wesnoth
		"male", "Urér", -- from Battle for Wesnoth
		"male", "Uril-Gambor", -- from Battle for Wesnoth
		"male", "Urilmalith", -- from Battle for Wesnoth
		"male", "Uróldor", -- from Battle for Wesnoth
		"male", "Urorfildor", -- from Battle for Wesnoth
		"male", "Urul", -- from Battle for Wesnoth
		"male", "Urymir", -- from Battle for Wesnoth
		"male", "Válad", -- from Battle for Wesnoth
		"male", "Ván", -- from Battle for Wesnoth
		"male", "Vándel", -- from Battle for Wesnoth
		"male", "Vandir", -- from Battle for Wesnoth
		"male", "Varalas", -- from Battle for Wesnoth
		"male", "Vararion", -- from Battle for Wesnoth
		"male", "Vebril", -- from Battle for Wesnoth
		"male", "Vebrilas", -- from Battle for Wesnoth
		"male", "Vebrinduil", -- from Battle for Wesnoth
		"male", "Vel", -- from Battle for Wesnoth
		"male", "Velon",
		"male", "Vilith", -- from Battle for Wesnoth
		"male", "Vol", -- from Battle for Wesnoth
		"male", "Vólas", -- from Battle for Wesnoth
		"male", "Vóldur", -- from Battle for Wesnoth
		"male", "Volund", -- elven smith from Norse mythology, brother of Slagfid and Egil
		"male", "Vondel", -- from Battle for Wesnoth
		"male", "Vorfin", -- from Battle for Wesnoth
		"male", "Vorfindil", -- from Battle for Wesnoth
		"male", "Vulas", -- from Battle for Wesnoth
		"male", "Vuldur", -- from Battle for Wesnoth
		"male", "Vunduil", -- from Battle for Wesnoth
		"male", "Vylas", -- from Battle for Wesnoth
		"male", "Vyldor", -- from Battle for Wesnoth
		"male", "Weland", -- Old English equivalent to Old Norse Völund; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 118.
		"male", "Widia" -- son of Weland (Völund); Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, pp. 113, 118.
	}
})

--[[
DefineCivilization("english", { -- information for later use
	Display = "English",
	Visible = true,
	Species = "human",
	ParentCivilization = "teuton",
	Language = "english",
	Adjective = "English",
	DefaultColor = "red",
	DevelopsFrom = {"teuton"}
})
--]]

DefineCivilization("ettin", {
	Display = "Ettin",
	Visible = true,
	Species = "ettin",
	ParentCivilization = "neutral",
--	Language = "ettin",
	Adjective = "Ettin",
	Playable = false,
	DefaultColor = "black",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-goblin-wooden-shield",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-goblin-patrol-land",
		"stand-ground", "icon-goblin-stand-ground",
		"return-goods", "icon-goblin-return-goods"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	},
--	Description = "The ettins of Jotunheim are one of the most ancient sentient peoples to have existed. They possess deep knowledge of mystic forces, passed on by their sages from generation to generation. One of their mystics once discovered another plane of existence - Asgard - during a trance. They sought more and more knowledge about those strange lands, until they were able to construct a massive portal leading to the new realm. There they found a group of powerful beings, and soon hostilities erupted between them and the invaders. Though few in number, with their sword and sorcery each of the Asgardians slew scores of ettins. The invasion ended in disaster. Those remaining of the gigantic creatures squirreled towards the portal, as the Asgardians used their powers to destroy it.\n\nDespite the failure of their campaign, the ettins had made a phenomenal advance in their mystic knowledge. Their portal had been destroyed, but the ability to create a new one was now theirs - forever. And as their magic wisdom and their martial prowess grew, they would eventually bring forth heroes capable of taking on the Asgardians.",
	PersonalNames = {
		"male", "Hraesvelg", -- giant who took the form of an eagle in Norse mythology (could be an ettin roc rider if made into a hero latero on); Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 18, 245.
		"male", "Saekmime" -- "Sækmime"; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	},
	ShipNames = {
		"Naglfar" -- ship of the giants in Norse mythology, whose helmsman is Hrym; made of dead men's nails; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 21.
	}
})

DefineCivilization("germanic", {
	Display = "Germanic",
	Visible = true,
	Species = "human",
	ParentCivilization = "neutral",
	Language = "proto-germanic",
	Adjective = "Germanic",
	DefaultColor = "orange",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-germanic-wooden-oblong-shield",
		"attack", "icon-germanic-short-sword",
		"patrol", "icon-germanic-patrol-land",
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-germanic-return-goods"
	},
	UIFillers = {
		"germanic/ui/filler_bottom.png", 380, -181,
		"germanic/ui/resource.png", 0, 0,
		"germanic/ui/buttonpanel.png", -256, -200,
		"germanic/ui/infopanel.png", 0, -200
	},
	Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. Those who migrated to Scandinavia spoke their own dialect of Indo-European, which eventually would develop into Germanic. Contact with the Celtic peoples to their south was beneficial to the Germanics, as they were able to incorporate more advanced techniques from Central Europe in areas such as metalworking."),
	PersonalNames = {
		"female", "Ammon", -- Proto-Germanic rendering of "Amma", Karl's mother in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
		"female", "Moder", -- Proto-Germanic rendering of "Mothir", Jarl's mother in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 22.
		"male", "Avan", -- Proto-Germanic rendering of "Afi", Karl's (presumed) father in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
		"male", "Branda", -- Proto-Germanic rendering of "Brandr" (son of Beldeg), descendant of Vóden, who settled Scandinavia in the Prose Edda; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
		"male", "Erala", -- Proto-Germanic rendering of "Jarl", the ancestor of the class of warriors in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 22-24.
		"male", "Fader", -- Proto-Germanic rendering of "Fathir", Jarl's (presumed) father in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 22.
		"male", "Godagaz", -- correct?
		"male", "Gudavulfa", -- Proto-Germanic rendering of "Gudólfr" (son of Ját), ancestor of Vóden, who settled Scandinavia in the Prose Edda; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
		"male", "Hadulaikaz", -- correct?
		"male", "Hagustaldaz", -- correct?
		"male", "Hlewagastiz", -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.2.
		"male", "Holtagastiz", -- correct?
		"male", "Karla", -- Proto-Germanic rendering of "Karl", the ancestor of the class of peasants in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
		"male", "Magan", -- Proto-Germanic rendering of "Magi" (son of Móda), ancestor of Vóden, who settled Scandinavia in the Prose Edda; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
		"male", "Skeldu", -- Proto-Germanic rendering of "Skjöldr", son of Vóden and ancestor of the Danish kings; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 221.
		"male", "Theudariks", -- correct?
		"male", "Thrahila", -- Proto-Germanic rendering of "Thrall", the ancestor of the class of thralls in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 19-20.
		"male", "Wagigaz", -- correct?
		"male", "Wiwaz", -- correct?
		"male", "Woduridaz" -- correct?
	},
	SettlementNames = {
		"Ansugardiz", -- "Ansugárdiz" is a rendering of rendering of "Asgard" in Proto-Germanic, as in the Ynglinga saga's story Asgard is the settlement in "Asia" in which Odin's people (here understood as the Indo-Europeans who went on to settle Scandinavia and become speakers of Proto-Germanic) used to live until they migrated to Scandinavia; shouldn't be in the location of Astrakhan, but instead where modern Assor is (where?), or alternatively Chasgar (again, where?); Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
		"Segiztuna" -- "Segiztûna" is a rendering of "Sigtun" in Proto-Germanic, since the Ynglinga saga the city was founded when the cultural ancestors of the Germanic peoples (= Odin's people) first settled Scandinavia
	},
	HistoricalTechnologies = {
		"upgrade-germanic-wood-plow", -4000, -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
		"upgrade-germanic-bronze-shield", -1100, -- bronze shields found in the Danish bogs began to be made; Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-bronze-age-shields/
		"upgrade-germanic-broad-sword", -1000 -- broad bronze sword from Føllenslev; Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/men-and-woman-in-the-bronze-age/
	}
})

DefineCivilization("celt", { -- has to be defined after the germanic civilization because it uses it as its parent civilization
	Display = "Celt",
	Visible = true,
	Species = "human",
	Language = "proto-celtic",
	ParentCivilization = "germanic",
	Adjective = "Celtic",
	Playable = false,
	DefaultColor = "green",
	CivilizationUpgrade = "upgrade-celt-civilization",
	Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Celtic peoples occupied large swathes of Europe, from France to the Middle Danube. They had trade contacts with Greeks and Romans, and warred a number of times with the latter. Eventually, most Celts would be conquered and assimilated by other peoples, leaving only small areas where Celtic languages were still spoken."),
	PersonalNames = {
		"female", "Aranrhod", -- daughter of Dôn; Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 143.
		"female", "Branwen", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 130.
		"female", "Cigfa", -- wife of Pryderi and daughter of Gwyn Gohoyw; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 35.
		"female", "Penarddun", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 132.
		"female", "Rigantona", -- "Rīgantonā"; Proto-Celtic version of the Welsh name "Rhiannon"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 124.
		"female", "Rhiannon", -- daughter of Hefeydd the Old and wife of Pwyll; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 20, 124.
		"male", "Aedan", -- Aedan mac Gabrain, the king of a kingdom founded in Argyll in 574 by Irish settlers; he attacked the Bernicians in 603 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77, 86.
		"male", "Ambiorix", -- chieftain of the Eburones tribe in 54 BC (together with Cativolcus); Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
		"male", "Beli", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 132.
		"male", "Bendigeidfran", -- Welsh name; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 130.
		"male", "Bruide", -- son of the king of Strathclyde who became king of the Picts in 672; he died in 693; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 87-88.
		"male", "Cadafael", -- Cadafael of Gwynedd; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 83-84.
		"male", "Cadwallon", -- king of Gwynedd; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 80-81.
		"male", "Caradawg", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"male", "Cassivellaunus", -- ancient Celt; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 137.
		"male", "Caswallawn", -- Welsh; son of Beli; equated in the Middle Ages with the Cassivellaunus of antiquity; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 137.
		"male", "Cativolcus", -- chieftain of the Eburones tribe in 54 BC (together with Ambiorix); Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223, 225.
		"male", "Cawrdaf", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"male", "Certic", -- king of Elmet (Briton kingdom); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
		"male", "Clud", -- father of Gwawl;  Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 21.
		"male", "Cynan", -- father of Solomon of Powys; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
		"male", "Dicuil", -- Irish monk who became notable for his scholarship; wrote "De Mensura Orbis Terrae"; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 40.
		"male", "Dutigern", -- British king who fought against Ida of Bernicia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
		"male", "Euroswydd", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Gofannon", -- Welsh; the name derives from that of an ancient Celtic deity, Gobannonos; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 143-144.
		"male", "Gwawl", -- son of Clud; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 21.
		"male", "Gwydion", -- Welsh; son of Dôn; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 142.
		"male", "Hefeydd", -- Hefeydd the Old, father of Rhiannon; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 20.
		"male", "Indutiomarus", -- chieftain of the Treviri in 54 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 224.
		"male", "Llyr", -- "Llŷr"; Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Llywelyn", -- Llywelyn ap Gruffudd, Welsh prince; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Madog", -- Madog ap Maredudd, last ruler of Powys; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 142.
		"male", "Maelgwn", -- Maelgwn of Gwynedd; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
		"male", "Manawydan", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Mynogan", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 132.
		"male", "Pryderi", -- prince of Dyfed; son of Pwyll and Rhiannon; had golden yellow hair; also known as "Gwri"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 31, 33-35.
		"male", "Pwyll", -- prince of Dyfed, lord of the seven Cantrefis of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 9.
		"male", "Solomon", -- king of Powys; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
		"male", "Teyrnon", -- Welsh name; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 126.
		"male", "Tigernonos" -- Proto-Celtic version of the Welsh name "Teyrnon"; means "great lord"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 126.
	},
	SettlementNames = {
		"Aber Menei", -- port near Caernarfon; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 134.
		"Aberffraw", -- most important residence of the prince of Gwynedd, located in the southwest of the island of Anglesey; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 133.
		"Arberth", -- settlement in Dyfed (Wales), perhaps the modern Narberth; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Caer Dathyl", -- possibly the iron age hill fort Tre'r Ceiri; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 72, 142.
		"Caer Seint", -- the modern Caernarfon and the Roman Segontium; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"Harddlech", -- settlement in the Welsh region of Ardudwy; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"Moridunum", -- the modern Carmarthen; main settlement of the Demetae (ancient Briton people); Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Pen Llwyn Diarwya", -- settlement in Dyfed (Wales); Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 118.
		"Sorbidunom" -- the modern Salisbury; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 115.
	},
	ProvinceNames = {
		"Ardudwy", -- Welsh region; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"Arfon",  -- cantref (administrative division) of Gwynedd; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 142.
		"Bychan",  -- cantref (administrative division) of Ystrad Tywi; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 128-129.
		"Cemais", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Demetia", -- land of the Demetae, an ancient Briton people; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Deugledyff", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Dyfed", -- Welsh kingdom -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Eginog",  -- cantref (administrative division) of Ystrad Tywi; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 128-129.
		"Emlyn", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Gwarthaf", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Mawr",  -- cantref (administrative division) of Ystrad Tywi; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 128-129.
		"Pebidiog", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Penfro", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Rhos" -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	},
	HistoricalTechnologies = {
		"upgrade-germanic-wood-plow", -4000, -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	}
})

DefineCivilization("gnome", {
	Display = "Gnome",
	Visible = true,
	Species = "gnome",
	ParentCivilization = "dwarf",
	Language = "gnomish",
	Adjective = "Gnomish",
	Playable = false,
	DefaultColor = "blue",
	NegativeYearLabel = "BU", -- Before Untersberg
	YearLabel = "YU", -- Years Untersberg
	ButtonIcons = {
		"move", "icon-gnomish-boots",
		"attack", "icon-gnomish-thrusting-sword-1",
		"patrol", "icon-gnomish-patrol-land",
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-dwarven-return-goods"
	},
	Description = _("Gnomes usually live in the hills and forests of Nidavellir, and often seek contact with nature. Although they have a different outlook on life than the dwarves, not rarely both two peoples live side by side, with gnomish minorities permeating dwarven settlements and vice-versa. These contacts have brought much benefit to both of them, both through trade and via the spread of gnomish technologies northwards."),
	PersonalNames = {
		"female", "Adalga", -- daughter of Bimbam I of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 79.
		"male", "Bimbam", -- Bimbam I of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 79.
		"male", "Clavo", -- commanding general of the army of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 106.
		"male", "Cravatu", -- Prince Cravatu, minister to King Bimbam I of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 97.
		"male", "Kalutho", -- name of an (apparently male) gnome; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 13.
		"male", "Pypo", -- king of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 13.
		"male", "Rubezahl"
	},
	SettlementNames = {
		"Gnana" -- name of the capital of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 179.
	}
})

DefineCivilization("goblin", {
	Display = "Goblin",
	Visible = true,
	Species = "goblin",
	ParentCivilization = "neutral",
	Language = "goblin",
	Adjective = "Goblin",
	DefaultColor = "teal",
	NegativeYearLabel = "BU", -- Before Untersberg
	YearLabel = "YU", -- Years Untersberg
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-goblin-wooden-shield",
		"attack", "icon-goblin-short-sword",
		"patrol", "icon-goblin-patrol-land",
		"stand-ground", "icon-goblin-stand-ground",
		"return-goods", "icon-goblin-return-goods"
	},
	UIFillers = {
		"goblin/ui/filler_bottom.png", 380, -181,
		"goblin/ui/resource.png", 0, 0,
		"goblin/ui/buttonpanel.png", -256, -200,
		"goblin/ui/infopanel.png", 0, -200
	},
	Description = _("Goblins dwell in the caves and highlands of Nidavellir. The frequency of goblin raids into dwarven and gnomish territory has fostered a history of hatred with those races. The emergence of the goblin merchant syndicates has changed this relationship, however. The goblin merchants have become an indispensable part of Nidavellir's trade network, though the dwarves and gnomes do hold grudges against their practices, specially their suspected support of piracy..."),
	PersonalNames = {
		"male", "Belragor", -- invented by Jesse Crider
		"male", "Dran",
		"male", "Erdog",
		"male", "Fal", -- Fal Khag, goblin from Battle for Wesnoth
		"male", "Gashnok",
		"male", "Gatrakh",
		"male", "Gorokh",
		"male", "Greebo",
		"male", "Grogor-Tuk",
		"male", "Hrugt",
		"male", "Kardur",
		"male", "Kartrog",
		"male", "Krung",
		"male", "Myrtos", -- invented by Jesse Crider
		"male", "Odrun",
		"male", "Orhtib",
		"male", "Ozdul",
		"male", "Panok",
		"male", "Pruol",
		"male", "Sbrak",
		"male", "Sdrul",
		"male", "Thurg",
		"male", "T'shar", -- T'shar Lggi, goblin from Battle for Wesnoth
		"male", "Uhmit",
		"male", "Urdum",
		"male", "Utrub",
		"male", "Vrag",
		"male", "Vrunt",
		"male", "Zhuk",
		"male", "Zuzerd",
	}
})

DefineCivilization("kobold", {
	Display = "Kobold",
	Visible = true,
	Species = "kobold",
	Language = "kobold",
	ParentCivilization = "goblin",
	Adjective = "Kobold",
	Playable = false,
	DefaultColor = "violet",
	NegativeYearLabel = "BU", -- Before Untersberg
	YearLabel = "YU", -- Years Untersberg
	ButtonIcons = {
		"attack", "icon-gnomish-thrusting-sword-1",
		"stand-ground", "icon-goblin-stand-ground"
	},
	Description = _("Kobolds live in the deep caves of Nidavellir, and worship wyrms as sacred ancestors. They share the dwarven passion for mining and metals, but not their technological advancement. Although kobolds can be inventive, their isolation from other communities has made the spread of progress to their lands more difficult. Being the sole intelligent reptilian race in Nidavellir, they feel threatened by the presence of dwarves, gnomes and goblins - all of which they call \"breastlings\"."),
	PersonalNames = {
		"Hodeke", -- Source: Jacob Grimm, "Deutsche Mythologie", pp. 392, 1049, 1080.
		"Hoidike", -- Source: Jacob Grimm, "Deutsche Mythologie", p. 392.
		"Napfhans", -- urce: Jacob Grimm, "Deutsche Mythologie", p. 393.
		"Pumphut", -- Source: Jacob Grimm, "Deutsche Mythologie", p. 1049.
		"Shellycoat", -- Source: Jacob Grimm, "Deutsche Mythologie", p. 394.
	}
})

DefineCivilization("minotaur", {
	Display = "Minotaur",
	Visible = true,
	Species = "minotaur",
	ParentCivilization = "neutral",
	Adjective = "Minotaur",
	Playable = false,
	DefaultColor = "red"
})

DefineCivilization("orc", {
	Display = "Orc",
	Visible = true,
	Species = "orc",
	ParentCivilization = "neutral",
	Adjective = "Orc",
	Playable = false,
	DefaultColor = "red",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-goblin-wooden-shield",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-goblin-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground",
		"return-goods", "icon-goblin-return-goods"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	}
})

DefineCivilization("teuton", {
	Display = "Teuton",
	Visible = true,
	Species = "human",
	Language = "high-german",
	ParentCivilization = "germanic",
	Adjective = "Teutonic",
	DefaultColor = "yellow",
	CivilizationUpgrade = "upgrade-teuton-civilization",
	DevelopsFrom = {"germanic"},
	Description = _("During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). Eventually, West Germanic peoples would come to identify themselves with the demonym \"deutsch\", a term often latinized as \"teutonicus\"."),
	Months = { -- Anglo-Saxon months; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 97-98.
		"january", "Giuli", -- first month of the Anglo-Saxon year; the modern Yule, the name was used for both the last and first month of the year; the year began on the 25th of December, during the night of which the "Modra nect" ("the night of the mothers") was celebrated
		"february", "Solmonath", -- second month of the Anglo-Saxon year; known as the month of cakes, in which those were offered to the gods
		"march", "Hrethmonath", -- third month of the Anglo-Saxon year, named after the goddess Hretha
		"april", "Eosturmonath", -- fourth month of the Anglo-Saxon year, named after the goddess Eostre
		"may", "Thrimilci", -- fifth month of the Anglo-Saxon year, so named because cows were supposedly milked three times a day during this month
		"june", "Litha", -- sixth and seventh month of the Anglo-Saxon year, the word supposedly means "moon"
		"july", "Litha", -- sixth and seventh month of the Anglo-Saxon year, the word supposedly means "moon"
		"august", "Weodmonath", -- eight month of the Anglo-Saxon year, the name means "the month of weeds"
		"september", "Halegmonath", -- ninth month of the Anglo-Saxon year, the name means "the month of offerings", due to a festival made at the end of the harvest
		"october", "Wintirfyllith", -- tenth month of the Anglo-Saxon year, begins with the first winter full moon
		"november", "Blotmonath", -- eleventh month of the Anglo-Saxon year, "the month of sacrifice", in which animals were sacrificed to the gods
		"december", "Giuli" -- last month of the Anglo-Saxon year; the modern Yule, the name was used for both the last and first month of the year
	},
	PersonalNames = {
		"female", "Hilde",
		"female", "Wilhelmina",
		"male", "Adalbert",
		"male", "Albert",
		"male", "Albrecht",
		"male", "Alexander",
		"male", "Alphart",
		"male", "Anton",
		"male", "Arnulf",
		"male", "Bernard",
		"male", "Carl",
		"male", "Christian",
		"male", "David",
		"male", "Eduard",
		"male", "Ernst",
		"male", "Fabian",
		"male", "Ferdinand",
		"male", "Franz",
		"male", "Friedrich",
		"male", "Georg",
		"male", "Gerhard",
		"male", "Gottfried",
		"male", "Gunther",
		"male", "Gustav",
		"male", "Hagen",
		"male", "Hans",
		"male", "Heinrich",
		"male", "Heinz",
		"male", "Helmut",
		"male", "Hermann",
		"male", "Hildebrand",
		"male", "Jakob",
		"male", "Johann",
		"male", "Josef",
		"male", "Joseph",
		"male", "Karl",
		"male", "Karlmann",
		"male", "Klaus",
		"male", "Kurt",
		"male", "Leopold",
		"male", "Lothar",
		"male", "Ludwig",
		"male", "Luitpold",
		"male", "Lukas",
		"male", "Manfred",
		"male", "Mark",
		"male", "Matthias",
		"male", "Maximilian",
		"male", "Michael",
		"male", "Otto",
		"male", "Paul",
		"male", "Peter",
		"male", "Philipp",
		"male", "Pippin",
		"male", "Richard",
		"male", "Rudolf",
		"male", "Siegfried",
		"male", "Theodor",
		"male", "Thomas",
		"male", "Tobias",
		"male", "Victor",
		"male", "Walter",
		"male", "Werner",
		"male", "Wilhelm",
		"male", "Wolfgang",
		"male", "Wolfhart"
	},
	FamilyNames = {
		"Muhlhausen" -- "Mühlhausen"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 104.
	},
	SettlementNames = {
		"Altsohl",
		"Botzen",
		"Bregenz",
		"Brünn",
		"Budweis",
		"Chlum",
		"Cilli",
		"Eger",
		"Franzensfeste",
		"Frohsdorf",
		"Gabel",
		"Gastein",
		"Gänserndorf",
		"Glurns",
		"Görz",
		"Graz", -- from the same Slavic root as "Grad"
		"Hamburg",
		"Innsbruck",
		"Ischl",
		"Josefstadt",
		"Karlsbad",
		"Krems",
		"Kremsier",
		"Kronstadt",
		"Kufstein",
		"Lemberg",
		"Leopoldstadt",
		"Linz",
		"Marburg",
		"München",
		"Münchengrätz",
		"Neusohl",
		"Nikolsburg",
		"Ödenburg",
		"Olmütz",
		"Passau",
		"Pilsen",
		"Prag",
		"Presburg",
		"Regensburg",
		"Sadowa",
		"Schässburg",
		"Schweinschädel",
		"Steinamanger",
		"Stuhlweissenburg",
		"Teplitz",
		"Teschen",
		"Tobitschau",
		"Trent",
		"Troppau",
		"Villach",
		"Wels",
		"Werschitz",
		"Zillertal"
	},
	ProvinceNames = {
		"Bavaria", -- "Bayern"
		"Carinthia", -- "Kärnten"
		"Holstein",
		"Mecklenburg",
		"Prussia", -- "Preussen"
		"Saxony", -- "Sachsen"
		"Schlesien",
		"Schleswig",
		"Styria", -- "Steiermark"
		"Tyrol", -- "Tirol"
		"Vorarlberg",
		"Westphalia" -- "Westfalen"
	},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineCivilization("troll", {
	Display = "Troll",
	Visible = true,
	Species = "troll",
	ParentCivilization = "goblin",
	Adjective = "Troll",
	Playable = false,
	DefaultColor = "green"
})

DefineCivilization("latin", {
	Display = "Latin",
	Visible = true,
	Species = "human",
	Language = "latin",
	ParentCivilization = "teuton",
	Adjective = "Latin",
	Playable = false,
	DefaultColor = "red",
	CivilizationUpgrade = "upgrade-latin-civilization",
	Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Latins were an Italic people who inhabited Central Italy and who founded many cities, one of them being Rome. With the expansion of consolidation of Roman power, most of Italy would be latinized, and eventually large areas of the Roman empire would speak Latin as their mother tongue."),
	PersonalNames = {
		"female", "Faustina", -- daughter of Emperor Antoninus Pius who married Marcus Aurelius; Source: "Ancient Warfare VII.6", 2013, pp. 6, 8.
		"male", "Antoninus", -- Antoninus Pius, Roman emperor; Source: "Ancient Warfare VII.6", 2013, p. 6.
		"male", "Attidius", -- Attidius Cornelianus, Roman governor of Syria; Source: "Ancient Warfare VII.6", 2013, p. 7.
		"male", "Avitus", -- Archbishop Avitus of Vienne; corresponded with the Burgundian king Sigismund c. 494-523, and was his chief advisor; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 99.
		"male", "Commodus", -- son of Marcus Aurelius and Faustina, succeeded his father as Roman emperor; Source: "Ancient Warfare VII.6", 2013, p. 6.
		"male", "Leo", -- Eastern Roman emperor who renounced the treaty with the Ostrogoths; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		"male", "Lucius", -- Lucius Verus, co-emperor with Marcus Aurelius; Source: "Ancient Warfare VII.6", 2013, pp. 6-7.
		"male", "Marcianus", -- source gives "Marcian"; Eastern Roman emperor who concluded a treaty with the Ostrogothic king Walamer after he had become independent in 453 AD, with the Ostrogoths providing protection of the frontier while the Romans gave them a subsidy; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		"male", "Marcus", -- Marcus Aurelius, Roman emperor; Source: "Ancient Warfare VII.6", 2013, pp. 6, 8, 10.
		"male", "Seneca", -- philosopher, of the school of Roman Stoicism; Source: "Ancient Warfare VII.6", 2013, p. 9.
		"male", "Severianus", -- governor of Armenia; Source: "Ancient Warfare VII.6", 2013, p. 7.
		"male", "Sidonius", -- Sidonius Apollinaris, Gallo-Roman writer; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
		"male", "Zeno" -- Eastern Roman Emperor; was emperor by 480; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
	},
	SettlementNames = {
		"Agrigentum",
		"Alba",
		"Aleria",
		"Antium",
		"Aquileia",
		"Ardea",
		"Ariminum",
		"Arretium",
		"Beneventum",
		"Bononia",
		"Bracara Augusta", -- Braga
		"Brundisium",
		"Buxentum",
		"Caesaraugusta",
		"Capua",
		"Caralis",
		"Circeii",
		"Clusium",
		"Corfinium",
		"Cora",
		"Corduba",
		"Cosa",
		"Cremona",
		"Croton",
		"Cumae",
		"Emporium",
		"Firmum",
		"Fregellae",
		"Fregena",
		"Fyrgi",
		"Genua", -- Genoa
		"Hatria",
		"Heraclea",
		"Locri",
		"Luceria",
		"Lucus Augusti",
		"Mariana",
		"Mediolanum", -- Milan
		"Minturnae",
		"Mutina",
		"Narnia",
		"Nora",
		"Norba",
		"Novum Castrum",
		"Olbia",
		"Olisipo",
		"Opitergium", -- Oderzo
		"Ostia",
		"Paestum",
		"Placentia",
		"Puteoli",
		"Regina Castra", -- Ratisbon/Regensburg
		"Rhegium",
		"Roma", -- Rome
		"Saguntum",
		"Salernum",
		"Salicula",
		"Satricum",
		"Segontium", -- Roman fortress, located where the modern Caernarfon is; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"Sena Gallica",
		"Setia",
		"Signia",
		"Sinuessa",
		"Sora",
		"Spoletium",
		"Sulci",
		"Sutrium",
		"Sybaris",
		"Syracusae",
		"Tarentum",
		"Tarracina",
		"Thurii",
		"Toletum",
		"Turnis Libisonis",
		"Usellis",
		"Velitrae",
		"Venusia",
		"Vibo Valentia",
		"Vindobona", -- Vienna
		"Vulturnus"
	}
})

DefineCivilization("basque", { -- represents not only the speakers of Vasconic languages, but also various pre-Indo-European cultures
	Display = "Basque",
	Visible = true,
	Species = "human",
	Language = "basque",
	ParentCivilization = "germanic",
	Adjective = "Basque",
	Playable = false
})

DefineCivilization("etruscan", {
	Display = "Etruscan",
	Visible = true,
	Species = "human",
	Language = "etruscan",
	ParentCivilization = "latin",
	Adjective = "Etruscan",
	Playable = false
})

DefineCivilization("goth", {
	Display = "Goth",
	Visible = true,
	Species = "human",
	Language = "gothic",
	ParentCivilization = "teuton",
	Adjective = "Gothic",
	Playable = false,
	DevelopsFrom = {"germanic"},
	Description = _("During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). The Goths and the Vandals played an important role in the wars and migrations of late antiquity, and apportioned a part of the Roman empire for themselves. The Visigoths (the Western Goths) settled in Spain and southern France, the Ostrogoths (the Eastern Goths) in Italy, and the Vandals in North Africa. Being a small minority relative to the populations they had conquered, eventually Goths and Vandals would assimilate into the local cultures."),
	PersonalNames = {
		"female", "Brunichilde", -- daughter of the Visigothic king Athanagild; refined, attractive, good-mannered, intelligent and socially affable; died in 613; became Brünhild in the myths; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, pp. 328, 330.
		"female", "Gailswintha", -- daughter of the Visigothic king Athanagild; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, pp. 328-329.
		"male", "Athanagild", -- Visigothic king; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
		"male", "Witiza" -- Visigothic king who reigned 700-710; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 400.
	},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineCivilization("greek", {
	Display = "Greek",
	Visible = true,
	Species = "human",
	Language = "greek",
	ParentCivilization = "latin",
	Adjective = "Greek",
	Playable = false,
	SettlementNames = {
		"Apollonia",
		"Argos",
		"Barca",
		"Byzantium",
		"Calchedon", -- Chalcedon
		"Callatis",
		"Camarina",
		"Catana",
		"Caulonia",
		"Chalcis",
		"Cius",
		"Cotyora",
		"Cume", -- Cumae
		"Cydonia",
		"Cyrene",
		"Dioscurias",
		"Elea",
		"Elis",
		"Emporiae", -- Emporium
		"Ephesus",
		"Epidamnus", -- Dyrrhachium
		"Gela",
		"Halicarnassus",
		"Hemeroscopium",
		"Heraclea",
		"Heraclea Chersonesus",
		"Hesperis",
		"Himera",
		"Ialysus",
		"Ilios",
		"Istrus",
		"Itanus",
		"Knossos",
		"Larissa",
		"Lissus",
		"Locri",
		"Massilia", -- Marseilles
		"Medama",
		"Megara",
		"Megara Hyblaca",
		"Mesambria",
		"Metapontium",
		"Methone",
		"Miletus",
		"Mycenae",
		"Motye",
		"Naucratis",
		"Naupactus",
		"Naxos",
		"Nicopolis",
		"Odessus",
		"Olbia",
		"Parthenope", -- Neapolis/Naples
		"Perinthus",
		"Phaselis",
		"Phasis",
		"Pityus",
		"Posidonia", -- Paestum
		"Rhegium",
		"Rhodae",
		"Salamis",
		"Selimis",
		"Selinus",
		"Selymbria",
		"Sinope",
		"Smyrna",
		"Soli",
		"Sparta",
		"Sybaris",
		"Syracusae",
		"Tanais",
		"Taras", -- Tarentum
		"Tarsus",
		"Theodosia",
		"Thurii",
		"Tomi",
		"Trapezus",
		"Zacynthus", -- Saguntum
		"Zancle" -- Messana
	},
	Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. Those who migrated to Greece spoke their own dialect of Indo-European, which eventually would develop into Ancient Greek. Initially a backwater in comparison to the Near East, Greece would eventually become one of the main centers of civilization in antiquity, being widely renowned for the achievements of its people. The rise of the Macedonian empire spread the influence of Greek culture through much of the eastern Mediterranean, Persia, and beyond, and even after the Roman conquest Greek remained widely spoken (both as a mother tongue and as a lingua franca) in the eastern half of the Mediterranean.")
})

DefineCivilization("egyptian", {
	Display = "Egyptian",
	Visible = true,
	Species = "human",
	ParentCivilization = "greek",
	Adjective = "Egyptian",
	Playable = false,
	DefaultColor = "yellow",
	PersonalNames = {
		"male", "Amenofis", -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 112.
		"male", "Isi", -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 81.
		"male", "Seti" -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 90.
	}
})

DefineCivilization("hittite", {
	Display = "Hittite",
	Visible = true,
	Species = "human",
--	Language = "hittite",
	ParentCivilization = "greek",
	Adjective = "Hittite",
	Playable = false
})

DefineCivilization("illyrian", {
	Display = "Illyrian",
	Visible = true,
	Species = "human",
	Language = "illyrian",
	ParentCivilization = "greek",
	Adjective = "Illyrian",
	Playable = false
})

DefineCivilization("minoan", {
	Display = "Minoan",
	Visible = true,
	Species = "human",
	Language = "minoan",
	ParentCivilization = "greek",
	Adjective = "Minoan",
	Playable = false
})

DefineCivilization("norse", {
	Display = "Norse",
	Visible = true,
	Species = "human",
	Language = "old-norse",
	ParentCivilization = "teuton",
	Adjective = "Norse",
	Playable = false,
	DevelopsFrom = {"germanic"},
	Description = _("During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). While late antiquity saw intense migration of Germanic peoples, the Danes and Swedes remained largely in Scandinavia, well beyond the developments of the Mediterranean."),
	PersonalNames = {
		"male", "Hathuwulf", -- Hathuwulf is a chieftain whose name appeared in a runestone at Stentoften in Blekinge; Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 118.
		"male", "Lytir" -- male name which means "lot-reader" or "speaker of truth"; Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 119.
	},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineCivilization("baltic", {
	Display = "Baltic",
	Visible = true,
	Species = "human",
--	Language = "lithuanian",
	ParentCivilization = "norse",
	Adjective = "Baltic",
	Playable = false
})

DefineCivilization("uralic", {
	Display = "Uralic",
	Visible = true,
	Species = "human",
	Language = "proto-uralic",
	ParentCivilization = "germanic",
	Adjective = "Uralic",
	Playable = false
})

DefineCivilization("finnish", {
	Display = "Finnish",
	Visible = true,
	Species = "human",
	Language = "finnish",
	ParentCivilization = "norse",
	Adjective = "Finnish",
	Playable = false,
	DevelopsFrom = {"uralic"}
})

DefineCivilization("magyar", {
	Display = "Magyar",
	Visible = true,
	Species = "human",
--	Language = "hungarian",
	ParentCivilization = "teuton",
	Adjective = "Magyar",
	Playable = false,
	DevelopsFrom = {"uralic"}
})

DefineCivilization("persian", {
	Display = "Persian",
	Visible = true,
	Species = "human",
	Language = "avestan",
	ParentCivilization = "greek",
	Adjective = "Persian",
	Playable = false,
	PersonalNames = {
		"male", "Vologaeses" -- Parthian king Vologaeses IV; Source: "Ancient Warfare VII.6", 2013, p. 7.
	}
})

DefineCivilization("phoenician", {
	Display = "Phoenician",
	Visible = true,
	Species = "human",
	ParentCivilization = "persian",
	Adjective = "Phoenician",
	Playable = false,
	DefaultColor = "black"
})

DefineCivilization("phrygian", {
	Display = "Phrygian",
	Visible = true,
	Species = "human",
	Language = "phrygian",
	ParentCivilization = "greek",
	Adjective = "Phrygian",
	Playable = false
})

DefineCivilization("slav", {
	Display = "Slav",
	Visible = true,
	Species = "human",
	Language = "proto-slavic",
	ParentCivilization = "teuton",
	Adjective = "Slavic",
	Playable = false,
	DefaultColor = "blue"
})

DefineCivilization("thracian", {
	Display = "Thracian",
	Visible = true,
	Species = "human",
	Language = "thracian",
	ParentCivilization = "greek",
	Adjective = "Thracian",
	Playable = false
})

DefineCivilization("wose", {
	Display = "Wose",
	Visible = true,
	Species = "wose",
	ParentCivilization = "neutral",
	Adjective = "Wose",
	Playable = false,
	DefaultColor = "green"
})

-- Cyclops names: Arges ("Vivid"), Brontes ("Thunderer"), Polyphemus (name means "many-voiced"), Steropes ("Lightner"), Tepegoz (an ogre with a single eye from Turkic mythology; apparently derived from the Greek Polyphemus myth; Tepe means "top, crown of the head" and Göz means "eye"), Depeghoz (Depêghöz, same as Tepegoz, given by Jacob Grimm in Teutonic Mythology, p. 424)

-- deity civilizations

DefineCivilization("aesir", {
	Display = "Aesir",
	Visible = true,
	ParentCivilization = "neutral",
	Language = "old-norse",
	Adjective = "Aesir",
	DefaultColor = "blue",
	Playable = false,
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-germanic-wooden-oblong-shield",
		"attack", "icon-germanic-short-sword",
		"patrol", "icon-germanic-patrol-land",
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-germanic-return-goods"
	},
	UIFillers = {
		"germanic/ui/filler_bottom.png", 380, -181,
		"germanic/ui/resource.png", 0, 0,
		"germanic/ui/buttonpanel.png", -256, -200,
		"germanic/ui/infopanel.png", 0, -200
	},
	HistoricalTechnologies = { -- give the Aesir iron weapons and armor from the beginning
		"upgrade-germanic-broad-sword", 0,
		"upgrade-teuton-spatha", 0,
		"upgrade-germanic-bronze-shield", 0,
		"upgrade-teuton-iron-shield", 0
	}
})


Load("scripts/factions.lua")

function GetCivilizationID(civilization)
	local civilizations = GetCivilizations()
	for i=1,table.getn(civilizations) do
		if (civilizations[i] == civilization) then
			return i - 1
		end
	end
	return -1
end

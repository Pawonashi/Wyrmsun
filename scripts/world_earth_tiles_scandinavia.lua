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

DefineWorldMapTile({495, 84}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Bergen"
	}
})

DefineWorldMapTile({496, 88}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Stavanger"
	}
})

DefineWorldMapTile({504, 89}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Arendal"
	}
})

DefineWorldMapTile({508, 86}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Skiringssalr", -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
		"norse", "Geirstadir" -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	}
})

DefineWorldMapTile({508, 96}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Aarhus"
	}
})

DefineWorldMapTile({509, 75}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Trondheim"
	}
})

DefineWorldMapTile({509, 87}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Tønsberg"
	}
})

DefineWorldMapTile({510, 81}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Lillehammar"
	}
})

DefineWorldMapTile({510, 85}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Oslo"
	}
})

DefineWorldMapTile({511, 86}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Moss"
	}
})

DefineWorldMapTile({512, 73}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Steinkjet"
	}
})

DefineWorldMapTile({512, 83}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Hamar"
	}
})

DefineWorldMapTile({513, 91}, {
	World = "Earth",
	CulturalSettlementNames = {
		"goth", "Gothenburg",
		"norse", "Göteborg"
	}
})

DefineWorldMapTile({515, 97}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Copenhagen"
	}
})

DefineWorldMapTile({517, 97}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Malmö"
	}
})

DefineWorldMapTile({518, 86}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Karlstad"
	}
})

DefineWorldMapTile({521, 64}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Bodø"
	}
})

DefineWorldMapTile({530, 77}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Härnösand"
	}
})

DefineWorldMapTile({531, 87}, {
	World = "Earth",
	CulturalSettlementNames = {
		"germanic", "Segiztûna", "name-elements", { -- rendering of "Sigtun" in Proto-Germanic, since the Ynglinga saga the city was founded when the cultural ancestors of the Germanic peoples (= Odin's people) first settled Scandinavia
			"compound", "prefix", "proto-germanic", "noun", "Segiz",
			"compound", "suffix", "proto-germanic", "noun", "Tûna"
		},
		"norse", "Sigtun", "name-elements", {
			"compound", "prefix", "old-norse", "noun", "no-case", "Sigr", -- presumably; used "no-case" to avoid the nominative ending "-r"
			"compound", "suffix", "old-norse", "noun", "Tûn" -- presumably
		}
	}
})

DefineWorldMapTile({532, 92}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Wisby"
	}
})

-- Fyrisvellir: name of the plains around Upsal-water (Sweden); Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
-- Myrkvafiord: name of a fiord in Sodermanland (Sweden); Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251.
-- Eydiskogr: name of a great uninhabited forest which used to cover the Swedish-Norwegian border on the south; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 256.
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
--      buttons.ccl - Define the unit-buttons of the goblin civilization.
--
--      (c) Copyright 2014 by Andre Novellino Gouv�a
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

------------------------------------------------------------------------------
--	Define", "unit-button.
--
--	DefineButton( { Pos = n, Level = n 'icon ident Action = name ['value value]
--		['allowed check ['values]] Key = key, Hint = hint 'for-unit", "units)
--

-- worker specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = "~!Repair",
  ForUnit = {"unit-goblin-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = "~!Harvest Lumber/Mine Gold",
  ForUnit = {"unit-goblin-worker"} } )

-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic-structure",
  Action = "button", Value = 1,
  Key = "b", Hint = "~!Build Basic Structure",
  ForUnit = {"unit-goblin-worker"} } )

-- simple buildings gnome -----------------------------------------------------

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = "~<ESC~> Cancel",
  ForUnit = {"unit-goblin-worker"} } )

-- buildings commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-goblin-spearman",
  Action = "train-unit", Value = "unit-goblin-spearman",
  Key = "i", Hint = "Train Goblin ~!Impaler",
  ForUnit = {"unit-dwarven-barracks"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-goblin-archer",
  Action = "train-unit", Value = "unit-goblin-archer",
  Key = "a", Hint = "Train ~!Archer",
  ForUnit = {"unit-dwarven-barracks"} } )

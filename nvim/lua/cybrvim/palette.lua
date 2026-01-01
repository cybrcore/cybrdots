-- # ---------------------------------------
-- # CYBRvim     neovim theme palette (part of cybrland)
-- # Project:    https://github.com/scherrer-txt/cybrland
-- # Author:     scherrer-txt   |   License:     GPL-3.0
-- # Source:     ~/.config/nvim/lua/cybrvim/palette.lua
-- # ---------------------------------------

---@class Palette
---@field fg  string
---@field bg  string
---@field sel string
---@field menu string
---@field no0 string
---@field no1 string
---@field no2 string
---@field re0 string
---@field re1 string
---@field re2 string
---@field gr0 string
---@field gr1 string
---@field gr2 string
---@field ye0 string
---@field ye1 string
---@field ye2 string
---@field bl0 string
---@field bl1 string
---@field bl2 string
---@field vi0 string
---@field vi1 string
---@field vi2 string
---@field cy0 string
---@field cy1 string
---@field cy2 string
---@field wh0 string
---@field wh1 string
---@field wh2 string
---@field me0 string
---@field me1 string
---@field me2 string
---@field or0 string
---@field or1 string
---@field or2 string
---@field pi0 string
---@field pi1 string
---@field pi2 string
return {
-- BASICS
	fg  = "#F24848", --(re0)
	bg  = "#030408", --(no0)
	sel = "#0D1120", --(re0)
	menu = nil,
-- BLACK
  	no0 = "#030408",
	no1 = "#05070D",
	no2 = "#0A0E1A",
-- RED
	re0 = "#F24848",
	re1 = "#631F21",
	re2 = "#331215",
-- GREEN
	gr0 = "#30F291",
	gr1 = "#15633F",
	gr2 = "#0C3423",
-- YELLOW
	ye0 = "#F2D230",
	ye1 = "#635618",
	ye2 = "#332D10",
-- BLUE
	bl0 = "#3061F2",
	bl1 = "#152966",
	bl2 = "#0C1737",
-- VIOLET
	vi0 = "#A130F2",
	vi1 = "#421666",
	vi2 = "#230D37",
-- CYAN
	cy0 = "#29BECC",
	cy1 = "#124E56",
	cy2 = "#0B292F",
-- WHITE
	wh0 = "#898D99",
	wh1 = "#393B42",
	wh2 = "#1E2025",
-- GREY
	me0 = "#4D5A80",
	me1 = "#212638",
	me2 = "#0D1120",
-- ORANGE
	or0 = "#F26118",
	or1 = "#63290E",
	or2 = "#33170B",
-- PINK
	pi0 = "#F230B2",
	pi1 = "#63164C",
	pi2 = "#330D2A",
	tr0 = nil,
}
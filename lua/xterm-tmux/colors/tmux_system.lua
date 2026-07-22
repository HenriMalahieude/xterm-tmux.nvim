local system = require("xterm-tmux.colors.xterm_system")

local M = {}

--better names
M.black   = system.color0
M.maroon  = system.color1
M.green   = system.color2
M.olive   = system.color3
M.navy    = system.color4
M.purple  = system.color5
M.teal    = system.color6
M.silver  = system.color7
M.grey    = system.color8
M.gray    = system.color8
M.red     = system.color9
M.lime    = system.color10
M.yellow  = system.color11
M.blue    = system.color12
M.fuchsia = system.color13
M.aqua    = system.color14
M.white   = system.color15

--Real Palette
M.bg = M.black
M.bg_dark = M.black
M.bg_gutter = M.black
M.bg_highlight = M.navy
M.bg_popup = M.bg_dark
M.bg_statusline = M.bg_dark
M.bg_sidebar = M.bg
M.bg_float = M.bg
M.bg_visual = M.navy
M.bg_search = M.blue

M.fg = M.white
M.fg_dark = M.silver
M.fg_gutter = M.gray
M.fg_highlight = M.olive
M.fg_popup = M.yellow
M.fg_statusline = M.fg_dark
M.fg_sidebar = M.fg_dark
M.fg_float = M.fg
M.fg_visual = M.white
M.fg_search = M.yellow

M.directory = M.purple
M.comment = M.gray
M.character = M.green
M.constant = M.olive
M.func = M.green
M.identifier = M.fg --also variables
M.keyword = M.lime
M.operator = M.silver
M.preproc = M.maroon
M.macro = M.red
M.special = M.fg
M.statement = M.lime
M.string = M.green
M.type = M.teal

M.git = {
	add = M.lime,
	change = M.teal,
	delete = M.red,
	untracked = M.yellow,
	ignore = M.gray,
}

M.diff = {
	add = M.green,
	change = M.blue,
	delete = M.red,
	text = M.aqua,
}

M.border_highlight = M.lime
M.border = M.green

M.eof = M.gray
M.good = M.lime
M.error = M.red
M.todo = M.yellow
M.warning = M.yellow
M.info = M.aqua
M.hint = M.fuchsia

M.rainbow = {
	M.blue,
	M.yellow,
	M.grean,
	M.aqua,
	M.fuschia,
	M.purple,
	M.red,
	M.red,
}

M.terminal = vim.deepcopy(system)

return M

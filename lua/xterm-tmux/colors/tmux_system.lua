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
M.bg_highlight = M.silver
M.bg_popup = M.bg_dark
M.bg_statusline = M.bg_dark
M.bg_sidebar = M.bg
M.bg_float = M.bg
M.bg_visual = M.navy
M.bg_search = M.blue

M.fg = M.white
M.fg_dark = M.silver
M.fg_gutter = M.gray
M.fg_highlight = M.gray
M.fg_popup = M.fg_dark
M.fg_statusline = M.fg_dark
M.fg_sidebar = M.fg
M.fg_float = M.fg
M.fg_visual = M.white
M.fg_search = M.white

M.comment = M.gray
M.character = M.green
M.constant = M.blue
M.func = M.blue
M.identifier = M.fg --also variables
M.keyword = M.fg
M.operator = M.fg
M.macro = M.red
M.special = M.green
M.statement = M.white
M.string = M.lime
M.type = M.blue

M.git = {
	add = M.green,
	change = M.navy,
	delete = M.maroon,
	untracked = M.olive,
	ignore = M.gray,
}

M.diff = {
	add = M.green,
	change = M.navy,
	delete = M.maroon,
	text = M.blue,
}

M.border_highlight = M.lime
M.border = M.green

M.eof = M.gray
M.good = M.lime
M.error = M.red
M.todo = M.blue
M.warning = M.yellow
M.info = M.navy
M.hint = M.aqua

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

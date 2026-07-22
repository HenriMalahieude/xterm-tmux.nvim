local M = {}

function M.setup(opts)
	opts = require("xterm-tmux.config").extend(opts)

	local colors = require("xterm-tmux.colors").setup(opts)
	local groups = require("xterm-tmux.groups").setup(colors, opts)

	--In case not default
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "xterm-tmux-" .. opts.style

	for group, hl in pairs(groups) do
		hl = type(hl) == "string" and { link = hl } or hl
		if hl.style ~= nil then --Apparently style is not a highlight thing
			for k, v in pairs(hl.style) do
				hl[k] = v
			end
			hl.style = nil
		end
		vim.api.nvim_set_hl(0, group, hl)
	end

	if opts.terminal_colors then
		M.terminal(colors)
	end

	return colors, groups, opts
end

---@param colors ColorScheme
function M.terminal(colors)
	vim.g.terminal_color_0 = colors.terminal.color0
	vim.g.terminal_color_8 = colors.terminal.color8

	vim.g.terminal_color_7 = colors.terminal.color7
	vim.g.terminal_color_15 = colors.terminal.color15

	vim.g.terminal_color_1 = colors.terminal.color1
	vim.g.terminal_color_9 = colors.terminal.color9

	vim.g.terminal_color_2 = colors.terminal.color2
	vim.g.terminal_color_10 = colors.terminal.color10

	vim.g.terminal_color_3 = colors.terminal.color3
	vim.g.terminal_color_11 = colors.terminal.color11

	vim.g.terminal_color_4 = colors.terminal.color4
	vim.g.terminal_color_12 = colors.terminal.color12

	vim.g.terminal_color_5 = colors.terminal.color5
	vim.g.terminal_color_13 = colors.terminal.color13

	vim.g.terminal_color_6 = colors.terminal.color6
	vim.g.terminal_color_14 = colors.terminal.color14
end

return M

--also stolen a little from tokyonights
local util = require("xterm_tmux.util")

local M = {}

M.styles = setmetatable({}, {
	__index = function(_, style)
		return vim.deepcopy(Util.mod("xterm_tmux.colors." .. style))
	end,
})

function M.setup(opts)
	opts = require("xterm_tmux.config").extend(opts)

	local palette = M.styles[opts.style:gsub("%-", "_")]

	--NOTE: Not currently used
	if type(palette) == "function" then
		palette = palette(opts)
	end

	palette.none = "NONE"

	opts.on_colors(palette)

	return palette, opts
end

return M

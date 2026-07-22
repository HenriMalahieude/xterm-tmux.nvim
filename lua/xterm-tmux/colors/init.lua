--also stolen a little from tokyonights
local M = {}

M.styles = {
	["tmux_system"] = require("xterm-tmux.colors.tmux_system"),
	--NOTE: Room for more
}

function M.setup(opts)
	opts = require("xterm-tmux.config").extend(opts)

	local palette = M.styles[opts.style:gsub("%-", "_")]

	--NOTE: Not currently used
	if type(palette) == "function" then
		palette = palette(opts)
	end

	palette.none = "NONE"

	opts.on_colors(palette)

	return palette
end

return M

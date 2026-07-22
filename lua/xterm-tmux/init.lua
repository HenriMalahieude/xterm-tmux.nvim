local config = require("xterm-tmux.config")

local M = {}
M.styles = {}

function M.load(opts)
	opts = config.extend(opts)

	M.styles["tmux-system"] = opts.style
	return require("xterm-tmux.theme").setup(opts)
end

M.setup = config.setup

return M


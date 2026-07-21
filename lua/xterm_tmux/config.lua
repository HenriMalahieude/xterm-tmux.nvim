local M = {}

M.version = "1.0.0"

M.defaults = {
	style = "tmux-system",
	--transparent = false, --TODO
	--terminal_colors = false, --TODO
	styles = {
		comments = { italic = false },
		keywords = { italic = false },
		functions = {},
		variables = {},

		--sidebars = "dark", --TODO
		--floats = "dark", --TODO
	},

	dim_inactive = false,
	lualine_bold = false,

	---@param colors ColorScheme
	on_colors = function(colors) end,

	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end,

	--cache = true, --TODO
}

M.options = nil

function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

function M.extend(opts)
	return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
	__index = function(_, k)
		if k == "options" then
			return M.defaults
		end
	end,
})

return M

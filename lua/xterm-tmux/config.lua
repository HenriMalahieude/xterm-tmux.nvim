local M = {}

M.version = "1.0.0"

M.defaults = {
	style = "tmux-system",
	transparent = false, --TODO
	terminal_colors = false,
	styles = {

		---NOTE: Will overwrite any setting used in this plugin (such as fg)
		---@type vim.api.keyset.highlight
		comments = { italic = false },
		keywords = { italic = false },
		functions = { italic = false },
		variables = { italic = false },

		sidebars = "dark",
		floats = "dark",
	},

	dim_inactive = false,
	lualine_bold = false, --TODO

	---@param colors ColorScheme
	on_colors = function(colors) end,

	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end, --TODO

	plugins = {
		all = true,
	}
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

local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

function M.get(c, opts)
	return {
		IndentBlanklineChar			= { fg = c.fg_gutter, nocombine = true },
		IndentBlanklineContextChar 	= { fg = c.fg, nocombine = true },
		IblIndent					= { fg = c.fg_gutter, nocombine = true },
		IblScope					= { fg = c.fg, nocombine = true},
	}
end

return M

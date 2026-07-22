local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

function M.get(c, opts)
	return {
		BufferLineIndicatorSelected = { fg = c.border_highlight },
	}
end

return M

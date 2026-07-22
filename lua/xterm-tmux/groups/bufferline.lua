local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

function M.get(c, opts)
	return {
		BufferLineIndicatorSelected = { fg = c.git.change },
	}
end

return M

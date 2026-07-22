local M = {}

M.url = "https://github.com/folke/noice.nvim"

function M.get(c)
	return {
		NoiceCmdlineIconInput 			= { fg = c.border_highlight },
		NoiceCmdlineIconLua				= { fg = c.border },
		NoiceCmdlinePopupBorderInput	= { fg = c.border_highlight },
		NoiceCmdlinePopupBorderLua		= { fg = c.border },
		NoiceCmdlinePopupTitleInput		= { fg = c.border_highlight},
		NoiceCmdlinePopupTitleLua		= { fg = c.border },
		NoiceCompletionItemKindDefault	= { fg = c.fg_dark, bg = c.none },
	}
end

return M

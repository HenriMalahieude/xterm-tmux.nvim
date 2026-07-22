local M = {}

M.url = "https://github.com/folke/noice.nvim"

function M.get(c)
	return {
		NoiceCmdlineIconInput 			= { fg = c.special },
		NoiceCmdlineIconLua				= { fg = c.info },
		NoiceCmdlinePopupBorderInput	= { fg = c.special },
		NoiceCmdlinePopupBorderLua		= { fg = c.info },
		NoiceCmdlinePopupTitleInput		= { fg = c.special },
		NoiceCmdlinePopupTitleLua		= { fg = c.info },
		NoiceCompletionItemKindDefault	= { fg = c.fg_dark, bg = c.none },
	}
end

return M

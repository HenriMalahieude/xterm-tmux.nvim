local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

function M.get(c, opts)
	return {
		NeoTreeDimText				= { fg = c.fg_gutter },
		NeoTreeFileName				= { fg = c.fg_sidebar },
		NeoTreeGitModified			= { fg = c.git.change },
		NeoTreeGitStaged			= { fg = c.git.add },
		NeoTreeGitUntracked			= { fg = c.git.untracked },
		NeoTreeNormal				= { fg = c.fg_sidebar, bg = c.bg_sidebar },
		NeoTreeNormalNC				= { fg = c.fg_sidebar, bg = c.bg_sidebar },
		NeoTreeTabActive			= { fg = c.fg, bg = c.bg_dark, bold = true },
		NeoTreeTabInactive			= { fg = c.fg_dark, bg = c.bg},
		NeoTreeTabSeparatorActive 	= { fg = c.fg, bg = c.bg_dark },
		NeoTreeTabSeparaterInactive	= { fg = c.fg_dark, bg = c.bg},
	}
end

return M

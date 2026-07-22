local config = require("xterm-tmux.config")

local M = {}

local function get_file(name)
	return require("xterm-tmux.groups." .. name)
end

M.addons = {
	["base"] = get_file("base"),
	["bufferline.nvim"] = get_file("bufferline"),
	["gitsigns.nvim"] = get_file("gitsigns"),
	["indent-blankline.nvim"] = get_file("indent-blankline"),
	["neo-tree.nvim"] = get_file("neo-tree"),
	["noice.nvim"] = get_file("noice"),
}

function M.get(name, colors, opts)
	return M.addons[name].get(colors, opts)
end

function M.setup(colors, opts)
	local groups = {
		["base"] = true,
	}

	--enabling
	if opts.plugins.all then
		for addons in pairs(M.addons) do
			groups[addons] = true
		end
	elseif opts.plugins.auto and package.loaded.lazy then
		local plugins = require("lazy.core.config").plugins
		for addon in pairs(M.addons) do
			if addon ~= "base" and plugins[addon] then
				groups[addon] = true
			end
		end
	end

	--manual enable/disable
	for addon in pairs(M.addons) do
		local use = opts.plugins[addon]
		use = use == nil and opts.plugins[addon] or use

		if use ~= nil then
			if type(use) == "table" then
				use = use.enabled
			end

			groups[addon] = use or nil
		end
	end

	local names = vim.tbl_keys(groups)
	table.sort(names)

	local ret = {}
	for group in pairs(groups) do
		for k, v in pairs(M.get(group, colors, opts)) do
			ret[k] = v
		end
	end

	opts.on_highlights(ret, colors)

	return ret, groups
end

return M

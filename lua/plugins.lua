local colorscheme = {
	-- 'sainnhe/sonokai',
	-- 'davidosomething/vim-colors-meh',
	-- 'lurst/austere.vim',
	-- "catppuccin/nvim",
	-- 'savq/melange-nvim',
	'olimorris/onedarkpro.nvim',
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		vim.cmd [[ set background=dark ]]
		-- vim.cmd [[colorscheme sonokai]]
		-- vim.cmd [[colorscheme meh]]
		-- vim.cmd [[colorscheme austere]]
		vim.cmd [[ colorscheme onedark ]]
	end,
}

local telescope = { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } }

local telescope_fzf_native = {
	'nvim-telescope/telescope-fzf-native.nvim',
	build =
	'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
}

local mason = { "williamboman/mason.nvim", config = function() require 'mason'.setup() end }

local web_dev_icons = { 'nvim-tree/nvim-web-devicons' }

local nvim_lsp_config = { 'neovim/nvim-lspconfig' }

local nvim_cmp = {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'L3MON4D3/LuaSnip'
	}
}

local treesitter = { 'nvim-treesitter/nvim-treesitter' }

local comment = { 'numToStr/Comment.nvim' }

local presence = { 'andweeb/presence.nvim' }

local gitsigns = { 'lewis6991/gitsigns.nvim' }

local harpoon = {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" }
}

local fugitive = { 'tpope/vim-fugitive' }

local lua_line = {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' }
}

local transparent = { 'xiyaowong/transparent.nvim' }

local autoclose = { 'm4xshen/autoclose.nvim' }

return {
	colorscheme,
	telescope,
	telescope_fzf_native,
	mason,
	web_dev_icons,
	nvim_lsp_config,
	nvim_cmp,
	treesitter,
	comment,
	presence,
	gitsigns,
	harpoon,
	fugitive,
	lua_line,
	transparent,
	autoclose
}

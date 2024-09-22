return {
	['lewis6991/impatient.nvim'] = {},

	['nvim-lua/plenary.nvim'] = {},

	['wbthomason/packer.nvim'] = {},

	['BurntSushi/ripgrep'] = {},

	['rcarriga/nvim-notify'] = {
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('plugins.config.notify')
		end,
	},

	['nvim-treesitter/nvim-treesitter'] = {
		build = ':TSUpdate',
		config = function()
			require('plugins.config.treesitter')
		end,
	},

	['kyazdani42/nvim-web-devicons'] = {
		config = function()
			require('nvim-web-devicons').setup()
		end,
	},

	['Shatur/neovim-session-manager'] = {
		config = function()
			require('plugins.config.session_manager')
		end,
	},

	['goolord/alpha-nvim'] = {
		commit = '89eaa18a472be680539dee5977e2255f4dbd0738',
		config = function()
			require('plugins.config.alpha')
		end,
	},

	['nvim-lualine/lualine.nvim'] = {
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('plugins.config._lualine')
		end,
	},

	['akinsho/bufferline.nvim'] = {
		tag = 'v2.*',
		config = function()
			require('plugins.config._bufferline')
		end,
	},

	['nvim-telescope/telescope.nvim'] = {
		tag = '0.1.4',
		requires = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope-live-grep-args.nvim',
		},
		config = function()
			require('plugins.config._telescope')
		end,
	},

	['nvim-telescope/telescope-fzf-native.nvim'] = {
		after = 'telescope.nvim',
		disable = vim.fn.executable('make') == 0,
		run = 'make',
		requires = { { 'nvim-telescope/telescope.nvim' } },
		config = function()
			require('plugins.config._telescope.utils').load_extension('fzf')
		end,
	},

	['debugloop/telescope-undo.nvim'] = {
		after = 'telescope.nvim',
		requires = { 'nvim-telescope/telescope.nvim' },
		config = function()
			require('plugins.config._telescope.utils').load_extension('undo')
		end,
	},

	['folke/which-key.nvim'] = {
		config = function()
			require('plugins.config.whichkey')
		end,
	},
	--
	['brooth/far.vim'] = {
		config = function()
			require('plugins.config.far')
		end,
	},

	-- ['gelguy/wilder.nvim'] = {
	-- 	config = function()
	-- 		require('plugins.config.wilder')
	-- 	end,
	-- },

	['SirVer/ultisnips'] = {
		config = function()
			require('plugins.config.ultisnips')
		end,
	},

	-- ['kelly-lin/ranger.nvim'] = {
	-- 	config = function()
	-- 		require('plugins.config.ranger')
	-- 	end,
	-- },

	['nvim-neotest/neotest'] = {
		requires = {
			'nvim-lua/plenary.nvim',
			'antoinemadec/FixCursorHold.nvim',
			'nvim-treesitter/nvim-treesitter',
			'VladaTrefil/neotest-minitest',
			{
				'stevearc/overseer.nvim',
				config = function()
					require('overseer').setup()
				end,
			},
		},
		config = function()
			require('plugins.config._neotest')
		end,
	},

	['zbirenbaum/copilot.lua'] = {
		cmd = 'Copilot',
		event = 'InsertEnter',
		config = function()
			require('plugins.config.copilot')
		end,
	},

	['VladaTrefil/ChatGPT.nvim'] = {
		requires = {
			'MunifTanjim/nui.nvim',
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope.nvim',
		},
		config = function()
			require('plugins.config._chatgpt')
		end,
	},

	-- Package Manager
	['williamboman/mason.nvim'] = {
		build = ':MasonUpdate',
		config = function()
			require('plugins.config.lsp_tools.mason_conf')
		end,
	},

	['folke/neodev.nvim'] = {},

	-- Built-in LSP
	['neovim/nvim-lspconfig'] = {
		requires = {
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim', as = 'mason-lspconfig' },
		},
		config = function()
			require('plugins.config.lsp_tools.neodev')
			require('plugins.config.lsp_tools.nvim_lspconfig')
		end,
	},

	['folke/trouble.nvim'] = {
		as = 'trouble',
		requires = {
			'neovim/nvim-lspconfig',
		},
	},

	-- VSCode like pictograms for menus, powered by Nvim LSP
	['onsails/lspkind.nvim'] = {},

	-- LSP symbols
	-- ['stevearc/aerial.nvim'] = {
	-- 	module = 'aerial',
	-- 	branch = 'nvim-0.5', -- for neovim 0.7
	-- 	after = { 'nvim-treesitter', 'nvim-lspconfig' },
	-- 	ft = { 'man', 'markdown' },
	-- 	config = function()
	-- 		require('plugins.config.aerial')
	-- 	end,
	-- },

	['mfussenegger/nvim-lint'] = {
		opt = true,
		event = 'User PackLoad',
		config = function()
			require('plugins.config._lint')
		end,
	},

	['stevearc/conform.nvim'] = {
		opt = true,
		event = 'User PackLoad',
		config = function()
			require('plugins.config._conform')
		end,
	},

	['hrsh7th/nvim-cmp'] = {
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lua',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'VladaTrefil/cmp-cmdline',
			'David-Kunz/cmp-npm',
			'ray-x/cmp-treesitter',
			'quangnguyen30192/cmp-nvim-ultisnips',
		},
		config = function()
			require('plugins.config.cmp')
		end,
	},

	['drzel/vim-repo-edit'] = {}, -- " Quickly clone github repo to tmp
	['tpope/vim-git'] = {},
	['tpope/vim-fugitive'] = {},
	['lewis6991/gitsigns.nvim'] = {
		config = function()
			require('plugins.config._gitsigns')
		end,
	},
	['folke/todo-comments.nvim'] = {
		config = function()
			require('plugins.config._todo_comments')
		end,
	},

	['sindrets/diffview.nvim'] = {
		config = function()
			require('plugins.config._diffview')
		end,
	},

	['echasnovski/mini.splitjoin'] = {
		config = function()
			require('plugins.config._splitjoin')
		end,
	},

	['windwp/nvim-autopairs'] = {
		config = function()
			require('plugins.config.autopairs')
		end,
	},

	['backdround/improved-search.nvim'] = {
		config = function()
			require('plugins.config._improved_search')
		end,
	},
	['rhysd/clever-f.vim'] = {},

	['numToStr/Comment.nvim'] = {
		config = function()
			require('plugins.config._comment')
		end,
	},

	['lukas-reineke/indent-blankline.nvim'] = {
		config = function()
			require('plugins.config._indentline')
		end,
	},

	['RRethy/vim-illuminate'] = {}, -- " Highlights words that match the word under cursor
	['norcalli/nvim-colorizer.lua'] = {
		config = function()
			require('plugins.config._colorizer')
		end,
	},

	['tpope/vim-eunuch'] = {}, -- " File commands in vim

	['mattn/emmet-vim'] = {},

	['wavded/vim-stylus'] = {},
	['jasonshell/vim-svg-indent'] = {},
	['vim-scripts/svg.vim'] = {},
	['mboughaba/i3config.vim'] = {},
	['kchmck/vim-coffee-script'] = {},
	['slim-template/vim-slim'] = {},
}

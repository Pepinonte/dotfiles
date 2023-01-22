-- Auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
	return
end

local packer_util_ok, packer_util = pcall(require, "packer.util")
if not packer_util_ok then
	return
end

-- Plugins
packer.startup({
	function(use)

		-- Packer manager
		use("wbthomason/packer.nvim")

		--###########
		--# Display #
		--###########

		-- Dashboard-nvim	
		use {'glepnir/dashboard-nvim'}
		-- Add indentation guide-lines
		use("lukas-reineke/indent-blankline.nvim")
		-- Colorscheme
		use("folke/tokyonight.nvim")
-- nvim-colorizer => color highlighter
		use("NvChad/nvim-colorizer.lua")
-- get focus on actual view
		-- use("TaDaa/vimade")

--#############################################################################

		--#############
		--# NVIM-TREE #
		--#############

		-- nvim-web-devicons => icons
		use("nvim-tree/nvim-web-devicons")
		-- nvim-tree => file explorer
		use({
			"nvim-tree/nvim-tree.lua",
			requires = { "nvim-tree/nvim-web-devicons" },
			tag = "nightly",
		})

--#############################################################################

		--################
		--# NVIM-LUALINE #
		--################

		-- lualine => status bar (bottom)
		use{
			"nvim-lualine/lualine.nvim",
			require = { 'kyazdani42/nvim-web-devicons', opt = true }
		}
--#############################################################################

		--###########
		--# COMMENT #
		--###########

		-- Commentaires
		use("numToStr/Comment.nvim")

--#############################################################################

	--#############
	--# TELESCOPE #
	--#############

-- telescope => fuzzy finder
		use({
			"nvim-telescope/telescope.nvim",
			branch = "0.1.x", -- tag = '0.1.0',
			requires = { "nvim-lua/plenary.nvim" },
		})

-- telescope-fzf-native => Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
		use({
			"nvim-telescope/telescope-fzf-native.nvim",
			run = "make",
			-- run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
			cond = vim.fn.executable("make") == 1,
		})

		-- telescope => more Telescope plugins integration.
		use("benfowler/telescope-luasnip.nvim")
		use("jvgrootveld/telescope-zoxide")
		use("cljoly/telescope-repo.nvim")
		use("AckslD/nvim-neoclip.lua")
		use("nvim-telescope/telescope-symbols.nvim")
		use("sudormrfbin/cheatsheet.nvim")
		use("nvim-telescope/telescope-packer.nvim")
		use({
			"dhruvmanila/telescope-bookmarks.nvim",
			-- Uncomment if the selected browser is Firefox or buku
			requires = {
				"kkharji/sqlite.lua",
			},
		})

--#############################################################################

		-- harpoon => navigate between files
		use("ThePrimeagen/harpoon")

--#############################################################################

--##############
--# TREESITTER #
--##############

-- nvim-treesitter => highlighting and indenting code
		use("nvim-treesitter/nvim-treesitter",{run = 'TSUpdate'})
		use('nvim-treesitter/playground')

	--#############################################################################

--#######
--# LSP #
--#######
		use {
			'VonHeikemen/lsp-zero.nvim',
			requires = {
				-- LSP Support
				{'neovim/nvim-lspconfig'},
				{'williamboman/mason.nvim'},
				{'williamboman/mason-lspconfig.nvim'},

				-- Autocompletion
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-buffer'},
				{'hrsh7th/cmp-path'},
				{'saadparwaiz1/cmp_luasnip'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'hrsh7th/cmp-nvim-lua'},
				{"hrsh7th/cmp-cmdline"},
				{"onsails/lspkind.nvim"},

				-- Snippets
				{'L3MON4D3/LuaSnip'},
				{'rafamadriz/friendly-snippets'},
			}
		}
		use("jose-elias-alvarez/null-ls.nvim")
		use("jayp0521/mason-null-ls.nvim")

--#############################################################################

--##############
--# BUFFERLINE #
--##############
 

-- using packer.nvim
		use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

--#############################################################################

--#########
--# TABOO #
--#########

-- taboo => tab manager
		-- use("gcmt/taboo.vim")

--#############################################################################

-- wilder => wildmenu
		use({ "gelguy/wilder.nvim", requires = { "romgrk/fzy-lua-native" } })

--#############################################################################

-- trouble => a pretty list for showing diagnostics, references, telescope results, quickfix and location lists.
		use({
			"folke/trouble.nvim",
			requires = { "nvim-tree/nvim-web-devicons" },
		})

--#############################################################################

-- nvim-notify => notifications
		use("rcarriga/nvim-notify")

--#############################################################################

-- Autoclosing, autorename and autopair
		use("tpope/vim-surround") -- easy way to surround word or text
		use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose and autorename html tag with treesitter
		use("windwp/nvim-autopairs") -- autopair parents, brackets, quotes, etc...
		
--#############################################################################

		-- Fold and defold code-blocs
		use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

--#############################################################################

	end,
	config = {
		display = {
			open_fn = function()
				return packer_util.float({ border = "single" })
			end,
		},
	},
})

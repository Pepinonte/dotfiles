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

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

--#############################################################################
-- using packer.nvim
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	end,
	config = {
		display = {
			open_fn = function()
				return packer_util.float({ border = "single" })
			end,
		},
	},
})

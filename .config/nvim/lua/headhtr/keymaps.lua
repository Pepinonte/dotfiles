-- ###########
-- # KEYMAPS #
-- ###########

local key = vim.keymap.set
local full_options = { noremap = true, silent = true }
local noremap = { noremap = true }

-- Set leader key as a space.
vim.g.mapleader = " "

key("n", "<leader>pv", ":Ex<CR>", full_options)


-- ############
-- #	GENERAL #
-- ############

-- Scape shortcut
key("i", "jj", "<Esc>", noremap)
-- Quit actual buffer
key("n", "<leader>qq", ":q!<CR>", full_options)
-- Quit all buffers
key("n", "<leader>qa", ":qa!<CR>", full_options)
-- Save and quit all buffers
key("n", "<leader>wqa", ":wqa!<CR>", full_options)
-- Save and re source current file
key("n", "<C-s>", ":w! | source %<CR>", full_options)
key("n", "<leader>w", ":w<CR>", full_options)
-- key("n", "<leader>w", ":w | source % | :lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>", full_options)
-- key("n", "<leader>lf", ":lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>", full_options)
-- Save and quit actual buffer
key("n", "<leader>wq", ":wq!|<CR>", full_options)

-- ----------------------------------------------------------------------------

-- #############
-- #	BUFFERS  #
-- #############

key("n", "<C-w>", ":close<CR>", noremap)
key("n", "''", ":bNext<CR>", noremap)
key("n", ";;", ":bprevious<CR>", noremap)
-- Close actual buffer
key("n", "cb", ":bd<CR>", noremap)
-- Open new buffer
key("n", "nn", ":new<CR>", noremap)

-- ----------------------------------------------------------------------------

-- ###########################
-- # VISUAL MODE INDENTATION #
-- ###########################

key("v", "<", "<gv", full_options)
key("v", ">", ">gv", full_options)

-- ----------------------------------------------------------------------------

-- ######################
-- # Windows navigation #
-- ######################

key("n", "<C-h>", "<C-w>h", noremap)
key("n", "<C-j>", "<C-w>j", noremap)
key("n", "<C-k>", "<C-w>k", noremap)
key("n", "<C-l>", "<C-w>l", noremap)

-- ----------------------------------------------------------------------------

-- ######################
-- # RESIZE WITH ARROWS #
-- ######################

key("n", "<M-j>", ":resize +2<CR>", full_options)
key("n", "<M-k>", ":resize -2<CR>", full_options)
key("n", "<M-h>", ":vertical resize -2<CR>", full_options)
key("n", "<M-l>", ":vertical resize +2<CR>", full_options)


-- ----------------------------------------------------------------------------

-- ########
-- # TABS #
-- ########

-- Move to next buffer
key("n", "H", "gT", noremap)
key("n", "L", "gt", noremap)
key("n", "tt", ":tabnew<CR>", full_options)
key("n", "<S-w>", ":tabclose<CR>", full_options)


-- ----------------------------------------------------------------------------

-- #############
-- # NVIM-TREE #
-- #############

key("n", "<C-b>", ":NvimTreeToggle<CR>", full_options)
key("n", "<C-f>", ":NvimTreeFindFile<CR>", full_options)

-- ----------------------------------------------------------------------------
-- #############
-- # TELESCOPE #
-- #############

local ts_ok, telescope = pcall(require, "telescope")
if not ts_ok then
	return
end

local builtin_ok, builtin = pcall(require, "telescope.builtin")
if not builtin_ok then
	return
end

local themes_ok, themes = pcall(require, "telescope.themes")
if not themes_ok then
	return
end

key("n", "<leader>ff", ":lua CurrentDir()<CR>", full_options)
key("n", "<leader>flo", ":lua Flo()<CR>", full_options)
key("n", "<leader>dev", ":lua Dev()<CR>", full_options)
key("n", "<leader>dot", ":lua Dotfiles()<CR>", full_options)
key("n", "<leader>he", ":lua Help()<CR>", full_options)
key("n", "<leader>key", ":lua Keymaps()<CR>", full_options)
key("n", "<leader>re", ":lua Repo()<CR>", full_options)
key("n", "<leader>zo", ":lua Zoxide()<CR>", full_options)
key("n", "<leader>emo", ":lua Symbols()<CR>", full_options)
key("n", "<leader>p", ":lua Plugins()<CR>", full_options)
key("n", "<leader>boo", ":lua Bookmarks()<CR>", full_options)
key("n", "<leader>/", ":lua FuzzilySearch()<CR>", full_options)

key("n", "<leader>fb", ":Telescope buffers<CR>", full_options)
key("n", "<leader>fgf", ":Telescope git_files<CR>", full_options)
key("n", "<leader>fgc", ":Telescope git_commits<CR>", full_options)
key("n", "<leader>flg", ":Telescope live_grep<CR>", full_options)
key("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind current [W]ord" })
key("n", "<leader>neo", ":Telescope neoclip<CR>", full_options)


-- #################
-- # VIM-DADBOD-UI #
-- #################
--
-- -key("n", "<leader>mo", ":tabnew | :DBUIToggle<CR>:TabooRename DB<CR>", full_options)
--
-- vim.cmd([[
-- autocmd FileType dbui nmap <buffer> u <Plug>(DBUI_ToggleDetails)
-- autocmd FileType dbui nmap <buffer> <CR> <Plug>(DBUI_SelectLine)
-- autocmd FileType dbui nmap <buffer> d <Plug>(DBUI_DeleteLine)
-- autocmd FileType dbui nmap <buffer> R <Plug>(DBUI_Redraw)
-- autocmd FileType dbui nmap <buffer> A <Plug>(DBUI_AddConnection)
-- autocmd FileType dbui nmap <buffer> S <Plug>(DBUI_SelectLineVSplit)
-- ]])
--
-- ###########
-- # HARPOON #
-- ###########

key("n", "<leader>af", ":lua require'harpoon.mark'.add_file()<CR>", full_options)
key("n", "<leader>aa", ":lua require'harpoon.ui'.toggle_quick_menu()<CR>", full_options)

-- ###########
-- # LUASNIP #
-- ###########

key("n", "<leader>y", ":source ~/Flo/Dotfiles/nvim/plugin/luasnip.lua<CR>", noremap)

-- ############
-- # GITSIGNS #
-- ############
-- see gitsigns.lua

-- ############
-- # NVIM-CMP #
-- ############
-- see nvim-cmp.lua

-- ########
-- # GLOW #
-- ########

key("n", "<leader>gl", ":Glow<CR>", full_options)

-- ###########
-- # TROUBLE #
-- ###########

key("n", "<leader>tt", ":TroubleToggle<CR>", full_options)
key("n", "<leader>tw", ":TroubleToggle workspace_diagnostics<CR>", full_options)
key("n", "<leader>td", ":TroubleToggle document_diagnostics<CR>", full_options)
-- key("n", "<leader>tlo", ":TroubleToggle loclist<CR>", full_options)
key("n", "<leader>tq", ":TroubleToggle quickfix<CR>", full_options)
key("n", "gR", ":TroubleToggle lsp_references<CR>", full_options)

-- #################
-- # TODO-COMMENTS #
-- #################

key("n", "<leader>to", ":TodoTrouble<CR>", full_options)
key("n", "<leader>tl", ":TodoTelescope<CR>", full_options)

-- MOVING TEXT
key("v", "J", ":move '>+1<CR>gv=gv", full_options)
key("v", "K", ":move '<-2<CR>gv=gv", full_options)
key("n", "<C-j>", ":move .+1<CR>==", full_options)
key("n", "<C-k>", ":move .-2<CR>==", full_options)







key("n", "<leader>ff", ":lua CurrentDir()<CR>", full_options)
key("n", "<leader>flo", ":lua Flo()<CR>", full_options)
key("n", "<leader>dev", ":lua Dev()<CR>", full_options)
key("n", "<leader>dot", ":lua Dotfiles()<CR>", full_options)
key("n", "<leader>he", ":lua Help()<CR>", full_options)
key("n", "<leader>key", ":lua Keymaps()<CR>", full_options)
key("n", "<leader>re", ":lua Repo()<CR>", full_options)
key("n", "<leader>zo", ":lua Zoxide()<CR>", full_options)
key("n", "<leader>emo", ":lua Symbols()<CR>", full_options)
key("n", "<leader>p", ":lua Plugins()<CR>", full_options)
key("n", "<leader>boo", ":lua Bookmarks()<CR>", full_options)
key("n", "<leader>/", ":lua FuzzilySearch()<CR>", full_options)

key("n", "<leader>fb", ":Telescope buffers<CR>", full_options)
key("n", "<leader>fgf", ":Telescope git_files<CR>", full_options)
key("n", "<leader>fgc", ":Telescope git_commits<CR>", full_options)
key("n", "<leader>flg", ":Telescope live_grep<CR>", full_options)
key("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind current [W]ord" })
key("n", "<leader>neo", ":Telescope neoclip<CR>", full_options)

-- I have to change all paths in de functions

function CurrentDir()
	builtin.find_files({
		prompt_title = "🌞 " .. vim.fn.substitute(vim.fn.getcwd(), "/home/floslv", "~", ""),
		cwd = vim.fn.substitute(vim.fn.getcwd(), "/home/floslv", "~", ""),
		hidden = true,
	})
end

function Flo()
	builtin.find_files({
		cwd = "~/Flo",
		prompt_title = "🏠 ~/Flo",
		hidden = true,
	})
end

function Dev()
	builtin.find_files({
		cwd = "~/Flo/Dev",
		prompt_title = "💻 Dev",
		hidden = true,
	})
end

function Dotfiles()
	if pcall(function()
		builtin.git_files(themes.get_dropdown({
			cwd = "~/Flo/Dotfiles",
			prompt_title = " Dotfiles",
			hidden = true,
			previewer = false,
		}))
	end)
	then
	else
		builtin.find_files(themes.get_dropdown({
			prompt_title = " Dotfiles",
			cwd = "~/Flo/Dotfiles",
			hidden = true,
			previewer = false,
		}))
	end
end

function Help()
	builtin.help_tags(themes.get_dropdown({
		prompt_title = "❓ Help",
		previewer = false,
	}))
end

function Keymaps()
	builtin.keymaps(themes.get_ivy({
		prompt_title = "👀 Key maps",
	}))
end

function Repo()
	telescope.extensions.repo.list(themes.get_dropdown({
		prompt_title = "🌵 Repo",
		previewer = false,
	}))
end

function Zoxide()
	telescope.extensions.zoxide.list(themes.get_dropdown({
		prompt_title = "🌸 Zoxide",
	}))
end

function Symbols()
	builtin.symbols(themes.get_dropdown({
		prompt_title = "💢 Emoji",
	}))
end

function Plugins()
	telescope.extensions.packer.packer({
		prompt_title = "  Plugins",
		previewer = false,
	})
end

function Bookmarks()
	telescope.extensions.bookmarks.bookmarks(themes.get_ivy({
		prompt_title = "  Firefox bookmarks ",
	}))
end

function FuzzilySearch()
	builtin.current_buffer_fuzzy_find(themes.get_dropdown({
		winblend = 10,
		previewer = false,
		prompt_title = "[/] Fuzzily search in current buffer",
	}))
end

key("n", "<leader>mo", ":tabnew | :DBUIToggle<CR>:TabooRename DB<CR>", full_options)

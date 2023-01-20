-- ###########
-- # KEYMAPS #
-- ###########

local key = vim.keymap.set
local full_options = { noremap = true, silent = true }
local noremap = { noremap = true }

-- Set leader key as a space.
vim.g.mapleader = " "



key("n", "<leader>pv",":Ex<CR>", full_options)




-- ############
-- #	GENERAL #
-- ############

-- Scape shortcut
key("i", "jj", "<Esc>", noremap)
-- Quit actual buffer
key("n","<leader>qq",":q!<CR>", full_options)
-- Quit all buffers
key("n","<leader>qa",":qa!<CR>", full_options)
-- Save and quit all buffers
key("n","<leader>wqa",":wqa!<CR>", full_options)
-- Save and re source current file
key("n", "<leader>w", ":w! | source %<CR>", full_options)
-- Save and quit actual buffer
key("n","<leader>wq",":wq!|<CR>", full_options)

-- ----------------------------------------------------------------------------

-- #############
-- #	BUFFERS  #
-- #############

-- Close actual buffer
key("n","<C-w>",":close<CR>", noremap)
-- Move to previus buffer
--I need patch compatibility with OS keymaps
--key("n","<S-TAB>",":bNext<CR>", noremap)
--key("n","<C-TAB>",":bprevious<CR>", noremap)
-- Close buffer split
key("n","<M-w>",":bd<CR>", noremap)

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

key("n","<C-h>","<C-w>h",noremap)
key("n","<C-j>","<C-w>j",noremap)
key("n","<C-k>","<C-w>k",noremap)
key("n","<C-l>","<C-w>l",noremap)

-- ----------------------------------------------------------------------------

-- ######################
-- # RESIZE WITH ARROWS #
-- ######################

key("n", "<M-k>", ":resize +2<CR>", full_options)
key("n", "<M-j>", ":resize -2<CR>", full_options)
key("n", "<M-h>", ":vertical resize -2<CR>", full_options)
key("n", "<M-l>", ":vertical resize +2<CR>", full_options)


-- ----------------------------------------------------------------------------

-- ########
-- # TABS #
-- ########

key("n", "<C-n>", ":tabnew<CR>",full_options)
key("n", "<S-w>", ":tabclose<CR>",full_options)
-- Move to next buffer
key("n","<TAB>",":tabnext<CR>", noremap)
key("n","<S-TAB>",":tabprevious<CR>", noremap)


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

key("n", "<leader>mo", ":tabnew | :DBUIToggle<CR>:TabooRename DB<CR>", full_options)

vim.cmd([[
autocmd FileType dbui nmap <buffer> u <Plug>(DBUI_ToggleDetails)
autocmd FileType dbui nmap <buffer> <CR> <Plug>(DBUI_SelectLine)
autocmd FileType dbui nmap <buffer> d <Plug>(DBUI_DeleteLine)
autocmd FileType dbui nmap <buffer> R <Plug>(DBUI_Redraw)
autocmd FileType dbui nmap <buffer> A <Plug>(DBUI_AddConnection)
autocmd FileType dbui nmap <buffer> S <Plug>(DBUI_SelectLineVSplit)
]])

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

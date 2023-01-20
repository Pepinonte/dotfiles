local dash_status, dashboard = pcall(require, 'dashboard')
if not dash_status then
	return
end

local ts_status, telescope = pcall(require, 'telescope')
if not ts_status then
	return
end

local ts_builtin_status, ts_builtin = pcall(require, 'telescope.builtin')
if not ts_builtin_status then
	return
end

local ts_themes_status, ts_themes = pcall(require, 'telescope.themes')
if not ts_themes_status then
	return
end

local db = dashboard

db.custom_header = {
' ____ ____ ____ ____ ____ ____ ',
'||N |||E |||O |||V |||I |||M ||',
'||__|||__|||__|||__|||__|||__||',
'|/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|',
' ',
' ',
' '
}

local builtin = ts_builtin
local themes = ts_themes
local extensions = telescope.extensions
  --
  -- db.custom_center = {
  --     {icon = '  ',
  --     desc = 'Recently latest session                  ',
  --     shortcut = 'SPC s l',
  --     action ='SessionLoad'},
  --     {icon = '  ',
  --     desc = 'Recently opened files                   ',
  --     action =  'DashboardFindHistory',
  --     shortcut = 'SPC f h'},
  --     {icon = '  ',
  --     desc = 'Find  File                              ',
  --     action = 'Telescope find_files find_command=rg,--hidden,--files',
  --     shortcut = 'SPC f f'},
  --     {icon = '  ',
  --     desc ='File Browser                            ',
  --     action =  'Telescope file_browser',
  --     shortcut = 'SPC f b'},
  --     {icon = '  ',
  --     desc = 'Find  word                              ',
  --     action = 'Telescope live_grep',
  --     shortcut = 'SPC f w'},
  --     {icon = '  ',
  --     desc = 'Open Personal dotfiles                  ',
  --     action = '',
  --     shortcut = 'SPC f d'},
  --   }
  --
		db.custom_center = {
	{
		icon = '🔍   ',
		desc = 'Find file        ',
		action = function()
			builtin.find_files({
				cwd = vim.fn.substitute(vim.fn.getcwd(), '~/GROS Christian', '~', ''),
				prompt_title = '🌞 ' .. vim.fn.substitute(vim.fn.getcwd(), '~/GROS Christian', '~', ''),
				hidden = true
			})
		end
	},
	{
		icon = '💻   ',
		desc = 'Dev             ',
		action = function()
			builtin.find_files({
				cwd = '~/Code',
				prompt_title = '💻 Dev',
				hidden = true
			})
		end
	},
	{
		icon = '🔅   ',
		desc = 'Dotfiles         ',
		action = function()
			if pcall(function()
				builtin.git_files(
					themes.get_dropdown {
						cwd = '~/AppData/Local/nvim/',
						prompt_title = ' Dotfiles',
						hidden = true,
						previewer = false
					}
				)
			end) then
			else
				builtin.find_files(
					themes.get_dropdown {
						prompt_title = ' Dotfiles',
						cwd = '~/AppData/Local/nvim/',
						hidden = true,
						previewer = false
					}
				)
			end
		end
	},
	{
		icon = '📝   ',
		desc = 'New file        ',
		action = 'DashboardNewFile'
	},
	{
		icon = '🔑   ',
		desc = 'Key maps        ',
		action = function()
			builtin.keymaps(
				themes.get_ivy({
					prompt_title = '👀 Key maps'
				})
			)
		end
	},
	{
		icon = '❓   ',
		desc = 'Help             ',
		action = function()
			builtin.help_tags(
				themes.get_dropdown({
					prompt_title = '❓ Help',
					previewer = false
				})
			)
		end
	}
}


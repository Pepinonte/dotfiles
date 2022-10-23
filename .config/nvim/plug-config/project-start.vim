let g:startify_session_dir = "$HOME/.config/nvim/sessions"

let g:startify_lists = [
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'files',     'header': ['   Files']          },
        \ { 'type': 'dir',       'header': ['   Directory']      },
        \ ]

let g:startify_bookmarks = [
        \ { 'p':'$HOME/Code'},
        \ { 'c':'$HOME/.config/nvim'}
        \ ]

let g:startify_custom_header = [
        \'/  |  /  |                          /  |/  |        /  |             ', 
        \'$$ |  $$ |  ______    ______    ____$$ |$$ |____   _$$ |_     ______  ',
        \'$$ |__$$ | /      \  /      \  /    $$ |$$      \ / $$   |   /      \ ',
        \'$$    $$ |/$$$$$$  | $$$$$$  |/$$$$$$$ |$$$$$$$  |$$$$$$/   /$$$$$$  |',
        \'$$$$$$$$ |$$    $$ | /    $$ |$$ |  $$ |$$ |  $$ |  $$ | __ $$ |  $$/ ',
        \'$$ |  $$ |$$$$$$$$/ /$$$$$$$ |$$ \__$$ |$$ |  $$ |  $$ |/  |$$ |      ',
        \'$$ |  $$ |$$       |$$    $$ |$$    $$ |$$ |  $$ |  $$  $$/ $$ |      ',
        \'$$/   $$/  $$$$$$$/  $$$$$$$/  $$$$$$$/ $$/   $$/    $$$$/  $$/       ',
        \]

call plug#begin('~/.config/nvim/plugged')

" Themes
" Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
" Plug 'kaicataldo/material.vim'
" Plug 'tomasiser/vim-code-dark'

 Plug 'ryanoasis/vim-devicons'
 Plug 'mhinz/vim-signify'
 Plug 'mhinz/vim-startify'
 Plug 'alvan/vim-closetag'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'airblade/vim-rooter'
 Plug 'scrooloose/nerdtree'
 Plug 'christoomey/vim-tmux-navigator'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'tpope/vim-commentary'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'w0rp/ale'
 " Plug 'edkolev/tmuxline.vim'
 " Plug ' aymericbeaumet / vim-symlink ' 
" Plug 'sheerun/vim-polyglot'
" Plug 'davidhalter/jedi-vim'
 Plug 'Yggdroot/indentLine' 
 " Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
 " Plug 'majutsushi/tagbar'
 " Plug 'easymotion/vim-easymotion'
 " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

call plug#end()

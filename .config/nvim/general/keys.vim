let g:mapleader = "\<Space>"

nmap <leader>s <plug>(easymotion-s2)
nmap <leader>w :w<CR>
nmap <leader>qq :q!<CR>
nmap <leader>wq :wq<CR>
inoremap jj <Esc>

"Close actual buffer
nnoremap <C-w> :close<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
"Close buffer split
nnoremap <S-w> :bd<CR>

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2 <CR>
nnoremap <M-l> :vertical resize +2 <CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Alternate way to save
nnoremap <C-s> :w<CR>

"for quit terminal mode with <Esc> 
:tnoremap <Esc> <C-\><C-n>


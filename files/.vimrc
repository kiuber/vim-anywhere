" ============== Preference ==============
set number
let g:mapleader = ","

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Unset the 'last search pattern'
nnoremap <Leader><Enter> :nohlsearch<CR>

" Quit vim quickly
nnoremap <Leader>q :qa!<CR>

map <Leader>sp :set paste<CR>
map <Leader>snp :set nopaste<CR>




" Start NERDTree
autocmd VimEnter * NERDTree
" Start TagbarOpen
autocmd VimEnter * TagbarOpen
" Go to previous (last accessed) window
autocmd VimEnter * wincmd p

map <C-n> :NERDTreeToggle<CR>
map <C-u> :TagbarToggle<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" It is useful to define key mappings for the funky commands as below:
nnoremap <Leader>fu :CtrlPFunky<CR>
" narrow the list down with a word under cursor
nnoremap <Leader>uu :execute 'CtrlPFunky ' . expand('<cword>')<CR>

let g:polyglot_disabled = ['markdown']


" ============= Plugin =============
call plug#begin()

" ============= File Management =============
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-rooter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'

" ============= Appearance ============
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-signify'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/hiPairs'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'RRethy/vim-illuminate'
Plug 'majutsushi/tagbar'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
" MacOS default vim not compile conceal
if !has('mac')
	Plug 'Yggdroot/indentLine'
endif

" ============== Function ==============
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'tacahiroy/ctrlp-funky'

call plug#end()

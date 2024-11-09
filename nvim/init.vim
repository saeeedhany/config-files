:set relativenumber
:set tabstop=4
:set shiftwidth=4 
:set expandtab
:set cursorline
:set cursorcolumn
:set nowrap




call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
" Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
" Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
" Plug 'NLKNguyen/papercolor-theme'
Plug 'whatyouhide/vim-gotham'
" plug 'craftzdog/solarized-osaka.nvim'
Plug 'tribela/vim-transparent'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ThePrimeagen/vim-be-good'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
" or                                , { 'branch': '0.1.x' }

call plug#end()

" :colorscheme moonfly
" colorscheme moonfly
" :colorscheme PaperColor
:colorscheme gotham
" :colorscheme solarized-osaka



nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-p> :Telescope<CR>




let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

:set completeopt-=preview " For No Previews

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


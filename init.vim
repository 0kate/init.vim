scriptencoding utf-8
set encoding=utf-8

" Basic options
let mapleader=";"
set number
set ruler
set list
set listchars=tab:›\ ,eol:¬,trail:⋅
set scrolloff=999
set showmatch
set showmode
set splitbelow
set splitright
set title

" Search settings
set hlsearch
set ignorecase
set incsearch

" Tab settings
set expandtab

filetype on
filetype plugin on
filetype indent on

nnoremap <C-]> :vertical resize +1<CR>
nnoremap <C-[> :vertical resize -1<CR>

tnoremap <C-[> <C-\><C-n>
tnoremap <ESC> <C-\><C-n>

autocmd TermOpen * startinsert
autocmd TermOpen * setlocal nonumber

call plug#begin('~/.vim/plugged')
  Plug 'easymotion/vim-easymotion'
  Plug 'ziglang/zig.vim'

  Plug 'EdenEast/nightfox.nvim'
  Plug 'morhetz/gruvbox'
call plug#end()

" let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

map <Leader> <Plug>(easymotion-prefix)
" nmap  <Leader>w <Plug>(easymotion-overwin-w)

colorscheme carbonfox
" colorscheme gruvbox

command! SwitchBuffer :call bufswitcher#SwitchBuffer()
nnoremap <C-s>b :SwitchBuffer<cr>

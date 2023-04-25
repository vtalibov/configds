" 23/03/26
" Vladimir's neovim config

" general 
set nocompatible " better safe than sorry
syntax enable
set number relativenumber " relative line numbers
set encoding=utf-8
set splitright
set splitbelow
set ruler
set ls=2 " show status bar
set scrolloff=5 " lines to scroll
set noswapfile
set nobackup
set nowritebackup
set mouse=a " do not select line numbers with mouse
set ignorecase " ignore case when search
set smartcase " if upper case in a search querry, do not ignore the case

set cursorline

set wildmenu

set foldmethod=indent " folding
set foldlevel=99 " folding
nnoremap <space> za " fold with a spacebar instead of za

set clipboard=unnamedplus " yank to global clipboard

" indention
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab 
set autoindent

" color scheme
set background=dark
colorscheme gruvbox
" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction

set number
set relativenumber
set nowrap
set clipboard=unnamed

set ffs=unix,dos,mac

set laststatus=1
set noshowmode
set showtabline=2
set cmdheight=1

set colorcolumn=79

set nobackup
set nowritebackup
set noswapfile

set ignorecase
set smartcase
set hlsearch

set expandtab
set shiftwidth=4
set smarttab
set smartindent
set autoindent


source ~/.config/nvim/plugged.vim
if exists("g:init_vim_loaded")
  source ~/.config/nvim/keymap.vim
  "source ~/.config/nvim/coc.vim
endif

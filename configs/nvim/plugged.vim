if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
else
  let g:init_vim_loaded = 1
endif

call plug#begin('~/.config/nvim/plugged')

" File explorer
Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
"Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Editing
"Plug 'remko/detectindent', { 'on': 'DetectIndent' }
"Plug 'preservim/nerdcommenter'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-unimpaired'
"Plug 'jiangmiao/auto-pairs'
"Plug 'itchyny/vim-parenmatch'
"Plug 'terryma/vim-multiple-cursors'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Plug 'wellle/tmux-complete.vim'

" Visualization
Plug 'Yggdroot/indentLine'
"Plug 'jeffkreeftmeijer/vim-numbertoggle'
"Plug 'AndrewRadev/linediff.vim'

" Navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'tpope/vim-rsi'
"Plug 'christoomey/vim-tmux-navigator', { 'on': [] }
"Plug 'easymotion/vim-easymotion', { 'on': [] }

" Syntax Highlight
"Plug 'sheerun/vim-polyglot'
"Plug 'kien/rainbow_parentheses.vim'

" Linting
Plug 'dense-analysis/ale'

" Languages
"Plug 'isRuslan/vim-es6'
"Plug 'moll/vim-node'
"Plug 'othree/yajs.vim'
"Plug 'othree/es.next.syntax.vim'
"Plug 'StanAngeloff/php.vim'

"Plug 'kkoomen/vim-doge', { 'on': 'DogeGenerate' }

" Git
Plug 'rhysd/git-messenger.vim'
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'

" Appearances
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'mhinz/vim-startify'

" Standard
"Plug 'editorconfig/editorconfig-vim'
"Plug 'tpope/vim-sensible'

" Tracking
"Plug 'wakatime/vim-wakatime'

" Session management
Plug 'tpope/vim-obsession'
"Plug 'djoshea/vim-autoread'

" Color scheme
"Plug 'joshdick/onedark.vim'

call plug#end()

if !exists("g:init_vim_loaded")
  finish
endif

execute pathogen#infect()
syntax on
filetype plugin indent on

let NERDTreeSortHiddenFirst = 1
"let NERDTreeChDirMode = 2
let NERDTreeHijackNetrw = 1
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeIgnore=['\.git$[[dir]]','\.DS_Store$[[file]]']
"let NERDTreeQuitOnOpen=1

" NERDTree syntax
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" ALE
" Only run on open or save file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

" Ligntline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

" indentLine
let g:indentLine_char = '|'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_fileTypeExclude = ['text', 'startify', 'nerdtree']

" startify
let g:startify_files_number = 20
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0
let g:startify_custom_header = 'startify#center(startify#fortune#cowsay())'

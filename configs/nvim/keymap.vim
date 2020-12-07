" Toogle left sidebar tree view
map nt :NERDTreeToggle<cr>
map nf :NERDTreeFind<cr>

" Arrow keys resize pane
nnoremap <A-S-Left> :vertical resize -5<cr>
nnoremap <A-S-Right> :vertical resize +5<cr>
nnoremap <A-S-Up> :resize -5<cr>
nnoremap <A-S-Down> :resize +5<cr>

" Add new line/space
nnoremap go o<ESC>
nnoremap gO O<ESC>
nnoremap gi i <ESC>
nnoremap ga a <ESC>

" Scroll left/right
noremap gh 20zh
noremap gl 20zl

" use alt + left/right keys to switch buffers
noremap <A-Left> :bprev<cr>
noremap <A-h> :bprev<cr>
noremap <A-Right> :bnext<cr>
noremap <A-l> :bnext<cr>
" use alt + w to close current buffer
noremap <A-w> :bdelete<cr>
" use alt + W to close all buffers but current one
noremap <A-W> :%bd <BAR> e# <BAR> bd#<cr>

" use alt + up/down keys to move lines
vnoremap <A-Up> dkP1v
vnoremap <A-k> dkP1v
vnoremap <A-Down> dp1v
vnoremap <A-j> dp1v
nnoremap <A-Up> ddkP
nnoremap <A-k> ddkP
nnoremap <A-Down> ddp
nnoremap <A-j> ddp

" leading
let mapleader = ","

" remove search highlight
nnoremap <leader>hs :noh<cr>

" quick save
nnoremap <leader>w :w<cr>

" navigation / search
nnoremap <C-p> :Files<cr>
nnoremap <C-A-p> :Files!<cr>
nnoremap <leader>/ :BLines<cr>
nnoremap <leader><A-/> :BLines!<cr>
nnoremap <leader>f :Rg<cr>
nnoremap <leader><A-f> :Rg!<cr>
nnoremap <leader>F :RG<cr>
nnoremap <leader><A-F> :RG!<cr>

" vim-maximizer
nnoremap <leader>z :MaximizerToggle!<cr>

" Manually invoke speeddating in case switch didn't work
nnoremap <c-a> :if !switch#Switch() <bar>call speeddating#increment(v:count1) <bar> endif<cr>
nnoremap <c-x> :if !switch#Switch({'reverse': 1}) <bar>call speeddating#increment(-v:count1) <bar> endif<cr>

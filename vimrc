" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Default vimrc Settings
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $VIMRUNTIME/gvimrc_example.vim
behave mswin

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '"' . $VIMRUNTIME . '\diff"'
"      let eq = '""'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2

" Editor Settings
if has("gui_running")
   colorscheme solarized
else
   colorscheme base16-default-dark
endif
syntax enable
set background=dark
"set guifont=Consolas:h11:cANSI:qDRAFT
set guifont=DejaVu_Sans_Mono:h9:cANSI:qDRAFT

set guioptions-=T
set splitright
set splitbelow

set number
set expandtab
set tabstop=3
set shiftwidth=3
set autoindent
set smartindent
set textwidth=0

set autochdir
set clipboard=unnamed
set hidden
set nobackup
set noundofile
set autoread

" Mappings
nmap <C-PageUp> :bp<CR>
nmap <C-PageDown> :bn<CR>
nmap <Leader><C-W> :bd!<CR>

nmap <Leader>o :browse e<CR>
nmap <Leader>S :browse w<CR>

nmap <Leader>p :CtrlP<CR>
nmap <Leader>bb :CtrlPBuffer<CR>
nmap <Leader>bm :CtrlPMixed<CR>
nmap <Leader>bs :CtrlPPMRU<CR>

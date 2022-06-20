" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Default vimrc Settings
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $VIMRUNTIME/gvimrc_example.vim
behave mswin

" Terminal WSL Settings
" if has("windows")
"    set shell=ubuntu.exe
"    set shellpipe=|
"    set shellredir=>
"    set shellcmdflag=
" endif

" ConEmu
let conemu_ansi=$ConEmuANSI
if conemu_ansi == "ON"
   let g:airline_powerline_fonts = 0
   set term=xterm
   set t_Co=256
   let &t_AB="\e[48;5;%dm"
   let &t_AF="\e[38;5;%dm"
   " inoremap <Char-0x07F> <BS>
   " nnoremap <Char-0x07F> <BS>
   " Backspace fix from https://github.com/Maximus5/ConEmu/issues/1900
   let &t_kb="\xcex"
   set mouse=a
endif

" fzf Settings
set rtp+=D:\fzf

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Airline
if has("gui_running")
   let g:airline_powerline_fonts = 1
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2
set noshowmode

" Editor Settings
" if has("gui_running")
"    colorscheme base16-material
" else
"    colorscheme base16-default-dark
" endif
colorscheme base16-material
set termguicolors
syntax enable
set background=dark
set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI:qDRAFT,DejaVu_Sans_Mono:h10:cANSI:qDRAFT
set encoding=utf-8

set guioptions-=T
set wildmode=longest,list,full
set wildmenu
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

let &colorcolumn="81,".join(range(121,999),",")

" Mappings
nmap <C-Y> <C-Y>
nmap <C-PageUp> :bp<CR>
nmap <C-PageDown> :bn<CR>
nmap <Leader><C-W> :bd!<CR>
nmap <C-c> :%y+<CR>

nmap <Leader>o :browse e<CR>
nmap <Leader>S :browse w<CR>

nmap <Leader>p :CtrlP<CR>
" nmap <Leader>bb :CtrlPBuffer<CR>
nmap <Leader>bb :Buffers<CR>
nmap <Leader>bw :Windows<CR>
nmap <Leader>bm :CtrlPMixed<CR>
nmap <Leader>bs :CtrlPPMRU<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Commands
command! Scratch call myfunctions#Scratch()

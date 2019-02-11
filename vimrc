" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Default vimrc Settings
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $VIMRUNTIME/gvimrc_example.vim
behave mswin

" fzf Settings
set rtp+=D:\fzf

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

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
if has("gui_running")
   colorscheme base16-material
else
   colorscheme base16-default-dark
endif
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

" Syntax
autocmd BufNewFile,BufRead *.ctl setfiletype sqlldr
autocmd BufNewFile,BufRead *.ftl,*ftlh setfiletype ftl
autocmd BufNewFile,BufRead *.pc setfiletype c

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
nmap <Leader>bm :CtrlPMixed<CR>
nmap <Leader>bs :CtrlPPMRU<CR>

" Commands
command! Scratch call myfunctions#Scratch()

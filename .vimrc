syntax on
set noignorecase
set number
set fileformat=unix
set tabstop=4
set ruler
set directory=~/.vimtmp
set hls 
set is
set bg=dark
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,default
"set nobackup

set foldenable
set foldmethod=syntax
set foldminlines=2
set foldlevelstart=1
"set foldcolumn=2
let perl_fold = 1 
nmap ][ zc
nmap [] zo
nmap ]] zMzo
nmap [[ zR


vmap <tab> >gv 
vmap <s-tab> <gv 
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

vmap _c :s/^/#/g<Enter> 
vmap _C :s/^#//g<Enter> 

map =d :e ++enc=cp866
map =w :e ++enc=cp1251
map =k :e ++enc=koi8-r
map =u :e ++enc=utf-8

nmap <F2> :tabe 
nmap ,l :tabnew<cr>:Ex<cr> 
nmap <F3> :tabp<Enter>
nmap <F4> :tabn<Enter>
map <F10> :TagbarToggle<cr><c-w><right> 

set number
set autoindent
set shiftwidth=4
set softtabstop=4
set smartindent
set showmatch

au BufRead *.t   :set ft=perl
au BufRead *.tpl :set ft=tt2
au BufRead *.tpl :set foldmethod=indent

set background=dark     "or light
hi clear
if exists("syntax_on")
syntax reset
endif

hi Normal       ctermfg=LightGray guifg=LightGray ctermbg=none guibg=Black
hi NonText      ctermfg=DarkGray guifg=DarkGray  ctermbg=none guibg=Black

hi Statement    ctermfg=DarkYellow guifg=Blue      ctermbg=none guibg=Black
hi Comment      ctermfg=DarkGray guifg=DarkGray  ctermbg=none guibg=Black cterm=bold gui=bold term=bold
hi Constant     ctermfg=DarkGreen guifg=DarkGreen  ctermbg=none guibg=Black
hi Identifier   ctermfg=DarkCyan ctermbg=none cterm=none
hi Type         ctermfg=Green guifg=Green ctermbg=none guibg=Black
hi Folded       ctermfg=LightGray guifg=DarkGreen ctermbg=none guibg=Black cterm=none gui=underline term=none
hi Special      ctermfg=White guifg=Blue      ctermbg=none guibg=Black
hi PreProc      ctermfg=LightGray guifg=LightGray ctermbg=none guibg=Black cterm=bold gui=bold term=bold
hi Scrollbar    ctermfg=Blue guifg=Blue      ctermbg=none guibg=Black
hi Cursor       ctermfg=white guifg=white     ctermbg=Red guibg=Black
hi ErrorMsg     ctermfg=Red guifg=Red       ctermbg=none guibg=Black cterm=bold gui=bold term=bold
hi WarningMsg   ctermfg=Yellow guifg=Yellow    ctermbg=none guibg=Black
hi VertSplit    ctermfg=White guifg=White     ctermbg=none guibg=Black
hi Directory    ctermfg=Cyan guifg=Cyan      ctermbg=DarkBlue guibg=DarkBlue
hi Visual       ctermfg=White guifg=White     ctermbg=DarkGray guibg=DarkGray cterm=underline gui=underline term=none
hi Title        ctermfg=White guifg=White     ctermbg=DarkBlue guibg=DarkBlue

hi StatusLine   term=bold cterm=bold gui=bold,underline ctermfg=White guifg=White ctermbg=none guibg=Black
hi StatusLineNC term=bold cterm=bold gui=bold,underline ctermfg=Gray guifg=Gray  ctermbg=none guibg=Black
hi LineNr       term=none cterm=none gui=bold ctermfg=DarkGray ctermbg=none

set tags=~/tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

set nocompatible
filetype off " обязательно!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on " обязательно!
Bundle 'tpope/vim-fugitive'
"Bundle 'vim-perl/vim-perl'

" Настраиваем отображения скрытых символов, при включении их отображения:
" " tab - два символа для отображения табуляции (первый символ и заполнитель)
" " eol - символ для отображения конца строки
" " precedes - индикатор продолжения строки в лево
" " extends - индикатор продолжения строки в право
set listchars=tab:T·,eol:¬,precedes:«,extends:»
nmap <F5> :set list<CR>
nmap <F6> :set nolist<CR>

nmap <F7> :Gblame<CR>


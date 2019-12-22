filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'w0rp/ale'
Plugin 'neomake/neomake'
Plugin 'vim-syntastic/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/neosnippet.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'junegunn/goyo.vim'
Plugin 'vifm/vifm.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on
syntax on

let g:tex_flavor = 'latex'
let g:tex_view_method = 'zathura'
let g:tex_view_general_viewer = 'zathura'
let g:tex_vimtex_viewer = 'zathura'

set encoding=utf-8
set textwidth=80
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray
set history=500
set shiftwidth=4
set tabstop=4
set softtabstop=4
set display=lastline
set backspace=eol,start,indent

set number
set relativenumber
set ruler
set wrap
set linebreak
set autoread
set ignorecase
set smartcase
set hlsearch
set showmatch
set noerrorbells
set novisualbell
set nobackup
set nowb
set noswapfile
set noexpandtab
set smarttab
set lbr

"Enable Goyo by default for mutt writing
"Goyo's width will be the line limit in mutt
"   autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
"	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo

" Automatically deletes all trailing whitespaces on save
    autocmd BufWritePre * %s/\s\+$//e

" Recompile suckless programs automatically
    autocmd BufWritePost config.h,config.def.h !sudo make install

" Run xrdb whenever .Xdefaults or .Xresources are updated
    autocmd BufWritePost ~/.Xresources,~/build/st/.Xdefaults !xrdb &

" Update binds when sxhkdrc is updated
    autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Start nerdtree when vim opens
	autocmd vimenter * NERDTree

set statusline+=%#warningsmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntatistic_always_populate_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set tags=~/tags
set tags=./tags;

set laststatus=2
set statusline=
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set clipboard=unnamed

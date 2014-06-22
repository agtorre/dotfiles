" -----------------------------------------------------------------------------
" |                            VIM Settings                                   |
" -----------------------------------------------------------------------------
set nocompatible
let mapleader = ","

" vim tabs
" *****************************************************************************
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt
noremap <Leader>c :tabnew<cr>
noremap <Leader>n :tabn<cr>
noremap <Leader>p :tabp<cr>
noremap <Leader><Left> <C-w><Left>
noremap <Leader><Right> <C-w><Right>
noremap <Leader><Up> <C-w><Up>
noremap <Leader><Down> <C-w><Down>

" Indenting *******************************************************************
" Use 4 spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set pastetoggle=<F2>

" Scrollbars ******************************************************************
set sidescrolloff=2
set numberwidth=4

" Windows *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

" Cursor highlights ***********************************************************
set cursorline

" Searching *******************************************************************
set hlsearch  " highlight search
set ignorecase " Ignore case when searching
set smartcase " Ignore case when searching lowercase

" Line Wrapping ***************************************************************
set nowrap
set linebreak  " Wrap at word

" File Stuff ******************************************************************
filetype plugin indent on
" To show current filetype use: set filetype

" Sessions ********************************************************************
" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Invisible characters *********************************************************
set listchars=trail:.,tab:>-,eol:$
set nolist
:noremap <Leader>i :set list!<CR> " Toggle invisible chars

" Whitespace ******************************************************************
autocmd BufWritePre * :%s/\s\+$//e

" Misc settings ***************************************************************
set backspace=indent,eol,start
set number " Show line numbers
set matchpairs+=<:>
set vb t_vb= " Turn off bell, this could be more annoying, but I'm not sure how

" -----------------------------------------------------------------------------
" |                              Bundles                                      |
" -----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" colorshceme
Plugin 'altercation/vim-colors-solarized'
call vundle#end()

" -----------------------------------------------------------------------------
" |                              colorscheme                                  |
" -----------------------------------------------------------------------------
syntax enable
set background=dark
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    colorscheme solarized
endif

""maybe some strangeness? http://sunaku.github.io/vim-256color-bce.html
"set term=screen-256color
set t_Co=256 " 256 colors


" -----------------------------------------------------------------------------
" |                              Plug-ins                                     |
" -----------------------------------------------------------------------------
"golang
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" -----------------------------------------------------------------------------
" |                               Host specific                               |
" -----------------------------------------------------------------------------

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

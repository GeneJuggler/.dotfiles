set nocompatible              " be iMproved, required
filetype off                  " required

" To install on a fresh machine, I need to get Vundle installed like so:
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Then I need to do the initial :PluginInstall
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'desert256.vim'
Plugin 'Solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/indentpython.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set encoding=utf-8	" sets the file encoding to default utf-8
set number		" sets line numbers
set colorcolumn=80	" Show border at 80 characters
set backup		" tell vim to keep a backup file
set backupdir=~/.vim	" sets the backup directory
set backspace=indent,eol,start
set history=500		" keep 500 lines of command history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set autochdir		" makes working directory the same as the edited file

" For all text files set 'textwidth' to 79 characters
autocmd FileType text setlocal textwidth=79

if has('gui_running')	" Working in MacVim I have a bright UI
  set background=light
  colorscheme solarized
else
  colorscheme desert256
endif

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set guifont=Menlo:h13
endif

" Don't use Ex mode, use Q for formatting
map Q gq

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost * if line("'\"") | exe "'\"" | endif
endif

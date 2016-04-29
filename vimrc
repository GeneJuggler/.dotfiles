set nocompatible              " be iMproved, required
filetype off                  " required

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

syntax on		" makes the text look way cool

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







"set nocompatible
"
"" turns on pathogen
"execute pathogen#infect()
"syntax on
"filetype plugin indent on
"
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set expandtab
"
"" tell vim to keep a backup file
"set backup
"
"" tell vim where to put its backup files
"set backupdir=~/Dropbox\ \(Personal\)/Documents/dotfiles/vimbackupswap/
"
"set backspace=indent,eol,start
"
"set history=500		" keep 50 lines of command line history
"
"set ruler		" show the cursor position all the time
"
"set showcmd		" display incomplete commands
"
"set incsearch		" do incremental searching
"
"set colorcolumn=80	" sets a guide mark at 80 chars
"
"set number		" sets line numbers
"
"set autochdir		" makes working directory the same as the edited file
"
""autocmd BufEnter * silent! lcd %:p:h " if set autochdir breaks a plugin try
""this
"
"if has("gui_running")
"	colorscheme solarized
"	set background=light
"else 
"	colorscheme desert256
"endif
"
"" Don't use Ex mode, use Q for formatting
"map Q gq
"
"" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
"" so that you can undo CTRL-U after inserting a line break.
"inoremap <C-U> <C-G>u<C-U>
"
"" In many terminal emulators the mouse works just fine, thus enable it.
"if has('mouse')
"  set mouse=a
"endif
"
"" Switch syntax highlighting on, when the terminal has colors
"" Also switch on highlighting the last used search pattern.
"if &t_Co > 2 || has("gui_running")
"  syntax on
"  set hlsearch
"  set guifont=Menlo:h13
"endif
"
"" Only do this part when compiled with support for autocommands.
"if has("autocmd")
"
"  " Put these in an autocmd group, so that we can delete them easily.
"  augroup vimrcEx
"  au!
"
"  " For all text files set 'textwidth' to 78 characters.
"  autocmd FileType text setlocal textwidth=78
"
"  " When editing a file, always jump to the last known cursor position.
"  " Don't do it when the position is invalid or when inside an event handler
"  " (happens when dropping a file on gvim).
"  " Also don't do it when the mark is in the first line, that is the default
"  " position when opening a file.
"  autocmd BufReadPost *
"    \ if line("'\"") > 1 && line("'\"") <= line("$") |
"    \   exe "normal! g`\"" |
"    \ endif
"
"  augroup END
"
"else
"
"  set autoindent		" always set autoindenting on
"
"endif " has("autocmd")
"
"" Convenient command to see the difference between the current buffer and the
"" file it was loaded from, thus the changes you made.
"" Only define it when not defined already.
"if !exists(":DiffOrig")
"  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
"		  \ | wincmd p | diffthis
"endif

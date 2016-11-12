set nocompatible " improved
filetype off  " required

" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=$VIMDIR/bundle/Vundle.vim
call vundle#begin($VIMDIR.'/bundle/Vundle.vim')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" scripts from GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'goatslacker/mango.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'The-NERD-tree'

" see https://github.com/VundleVim/Vundle.vim for more

" All Plugins must be added before the following line:
call vundle#end() " required
filetype plugin indent on     " required

" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
"
" " see :h vundle for more details or wiki for FAQ


set backspace=2 " make backspace work like other apps
set showcmd
set cindent
set ttyfast
set smarttab  " tab and backspace are smart
set autoindent smartindent
set expandtab
set cinkeys=0{,0},:,0#,!^F
set pastetoggle=<F2>
set foldmethod=indent
set foldnestmax=10
set foldlevel=2
set shell=bash
set scrolloff=7
set sidescrolloff=7
set backupcopy=yes " Make file watching work

" Fix colors not working.
set background=dark
syntax on
color mango

" Enable proper cusrsors under cygwin.
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Non-visible character display
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list
highlight NonText guifg=grey ctermfg=grey
highlight SpecialKey guifg=grey ctermfg=grey

set magic " Enable extended Regex
set noerrorbells " Turn off error bells
set ruler " Show ruler
set showmode " Show the current mode
set hlsearch " Show find highlighting
set relativenumber " Show relative line numbers
set cursorline " Show current line highighted
" Map leader
let mapleader=","

" Make 81st column stand out
highlight ColorColumn ctermfg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Ensure syntax highlighting is accurate.
autocmd BufEnter * :syntax sync fromstart

" Prevent temporary and backup file clutter.
set backup
set backupdir=$VIMDIR/backup
set directory=$VIMDIR/tmp

" Helpful commands
nnoremap <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0

" Spacing sizes
" Default to 2 spaces
set ts=2 " tabstop
set sw=2 " shiftwidth
set sts=2 " softtabstop

" Switch from 2 to 4 spaces
nnoremap <M-F6> :set ts=2 sw=2 sts=2 noet<CR> \| :retab!<CR> \| :set ts=4 sw=4 sts=4 et<CR> \| :retab<CR>
" Switch from 4 to 2 spaces
nnoremap <M-F7> :set ts=4 sw=4 sts=4 noet<CR> \| :retab!<CR> \| :set ts=2 sw=2 sts=2 et<CR> \| :retab<CR>

" Window resize
if bufwinnr(1)
  nnoremap <C-Down> :exe "res -4"<CR>
  nnoremap <C-Up> :exe "res +4"<CR>
  nnoremap <C-Right> :exe "vertical res +4"<CR>
  nnoremap <C-Left> :exe "vertical res -4"<CR>
endif


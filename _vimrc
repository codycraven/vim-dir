" Preferred 2 space spacing
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set cinkeys=0{,0},:,0#,!^F
set pastetoggle=<F2>

" Non-visible character display
set list
set listchars=tab:·\ ,trail:·,extends:<,precedes:>
highlight NonText guifg=grey ctermfg=grey
highlight SpecialKey guifg=grey ctermfg=grey

set backspace=2         " Smarter backspace
set magic               " Enable extended Regex
set nocompatible        " Turn off full vi compatibility
set noerrorbells        " Turn off error bells
set ruler               " Show ruler
set showmode            " Show the current mode

set nonumber            " Don't show line numbers
set cursorline          " Show current line highighted
highlight CursorLine term=none cterm=none ctermbg=grey

" Prevent temporary and backup file clutter.
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Helpful commands
map <F2> :NERDTreeToggle<CR>
map <F3> :TlistToggle<CR>

" Window movement, hold ctrl and then use arrows
noremap <C-Right> <C-W><Right>
noremap <C-Down> <C-W><Down>
noremap <C-Left> <C-W><Left>
noremap <C-Up> <C-W><Up>

" Change movement keys to something tolerable
" Visual, select, and standard movement to jkl;
noremap ; l
vnoremap ; l
noremap l j
vnoremap l j
noremap j h
vnoremap j h
" K not needed to remap as we keep it to go up.

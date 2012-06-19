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
noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :TlistToggle<CR>

" Window movement, hold ctrl and then use arrows
noremap <C-l> <C-W>l
noremap <C-j> <C-W>j
noremap <C-h> <C-W>h
noremap <C-k> <C-W>k


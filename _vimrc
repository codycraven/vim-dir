" Preferred 2 space spacing
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set cinkeys=0{,0},:,0#,!^F
set pastetoggle=<F2>
set foldmethod=indent
set foldnestmax=10
set foldlevel=1

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
set cursorline          " Show current line highight
highlight CursorLine term=none cterm=none ctermbg=Gray

" Ensure syntax highlighting is accurate.
autocmd BufEnter * :syntax sync fromstart

" Highlight characters after 80.
highlight ColorColumn ctermbg=Gray
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Prevent temporary and backup file clutter.
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Helpful commands
noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :TlistToggle<CR>

" Window movement
noremap <C-l> <C-W>l
noremap <C-j> <C-W>j
noremap <C-h> <C-W>h
noremap <C-k> <C-W>k

" Window resize
if bufwinnr(1)
  noremap <C-Down> :exe "res -1"<CR>
  noremap <C-Up> :exe "res +1"<CR>
  noremap <C-Right> :exe "vertical res +1"<CR>
  noremap <C-Left> :exe "vertical res -1"<CR>
endif

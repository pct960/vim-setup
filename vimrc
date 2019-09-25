set nocompatible              " be iMproved, required
set number
set linebreak
set textwidth=100
set showmatch
set smartcase
set ignorecase
set incsearch
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set backspace=indent,eol,start
set number relativenumber
filetype plugin on
syntax on
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set clipboard+=unnamed
set viminfo='20,<1000,s1000
execute pathogen#infect()
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

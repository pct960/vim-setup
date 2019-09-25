"" Simple stuff
set nocompatible             
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
set wildmenu

if ! has("gui_running")
    set t_Co=256
endif
set background=dark
colors peaksea
set encoding=utf8

"" Enable syntax highlighting
filetype plugin on
syntax on

"" Automatically enable and disable relative line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"" Press Space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"" See https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
set clipboard^=unnamed,unnamedplus

"" Increase buffer size to 1000 lines
set viminfo='20,<1000,s1000

"" For pathogen to work
execute pathogen#infect()

"" Start NERDTree when you open a file with vim
autocmd vimenter * NERDTree
"" Focus on the opened file instead of on the NERDTree pane
autocmd VimEnter * wincmd p

"" Open NERDTree even when no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" Run NERDTreeTabs on vim startup
let g:nerdtree_tabs_open_on_console_startup = 1

"" Map Ctrl + left arrow and Ctrl + right arrow to switch tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"" Use the 'wombat' colour scheme for in the lightline plugin
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"" Map leader to ,
let mapleader = ","

"" Simple stuff
set number
set linebreak
set textwidth=100
set showmatch
set smartcase
set ignorecase
set incsearch
set autoindent
set shiftwidth=4
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set backspace=indent,eol,start
set number relativenumber
set wildmenu
set splitbelow
set cursorline

"" Set colour scheme to solarized8_flat
set background=dark
set encoding=utf8
colorscheme gruvbox

"" Indentation and syntax highlighting
filetype plugin indent on
syntax enable

"" Automatically enable and disable relative line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"" Press Space to turn off highlighting and clear any message already displayed
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"" See https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
set clipboard^=unnamed,unnamedplus

"" Increase buffer size to 1000 lines
set viminfo='20,<1000,s1000

"" For pathogen to work
execute pathogen#infect()

augroup nerdtree
    
    autocmd!
    
    "" Start NERDTree when you open a file with vim
    autocmd vimenter * NERDTree
    
    "" Focus on the opened file instead of on the NERDTree pane
    autocmd VimEnter * wincmd p
    
    "" Open NERDTree even when no files are specified
    autocmd StdinReadPre * let s:std_in=1
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

augroup END

"" Run NERDTreeTabs on vim startup
let g:nerdtree_tabs_open_on_console_startup = 1

"" Map Ctrl + left arrow and Ctrl + right arrow to switch tabs
noremap <silent> <C-Left> :tabprevious<CR>
noremap <silent> <C-Right> :tabnext<CR>

"" Use the 'wombat' colour scheme for in the lightline plugin
let g:lightline = {'colorscheme': 'wombat'}

"" Press ,<space> to bring up the terminal
try
    noremap <silent> <leader><space> :terminal fish<CR>
catch
    noremap <silent> <leader><space> :terminal bash<CR>
endtry

"" Press Esc twice to exit and close the terminal
tnoremap <ESC><ESC> <C-w>:q!<CR>

"" Jump to the previous position when re-opening a file
augroup previous_position 

    autocmd!

    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif

augroup END

" Switch to tab by tab number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

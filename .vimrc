set nocompatible
filetype off
set nu			" Enables line numbers
syntax on		" Enable syntax highlighting

set tabstop=4		" How many columns is a tab
set shiftwidth=4	" How many columns is a level of indentation
set expandtab		" Uses spaces when tabbing

set incsearch		" Enable incremental search
set hlsearch		" Enable highlight search. ':noh' will hide highlited text

set termwinsize=12x0	" Set terminal size
set splitbelow		" Always split below
set mouse=a		" Enable mouse drag on window splits

set background=dark " dark or light
colorscheme industry " default color scheme's name 


"""""" Vundle Plugin Management """""
""" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

""" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

""" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

""" Provides over 50 language packs
Plugin 'sheerun/vim-polyglot'

""" Automatic pair brackets, parenthesis and quotes
Plugin 'jiangmiao/auto-pairs'
let g:AutoPairsShortcutToggle = '<C-P>' " Ctrl-P toggles the auto-pairs

""" NERDTree plugin: a file system explorer
" ':help nerdtree' for help on usage
Plugin 'preservim/nerdtree' 
let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden file
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns
nmap <C-N> :NERDTreeToggle .<CR>   " Toggle the NERDTree panel with Ctrl-Q

""" tagbar plugin: browse tags of the file (classes, variables, functions, ...)
Plugin 'preservim/tagbar'
let g:tagbar_autofocus = 1      " Focus the panel when opening it
let g:tagbar_autoshowtag = 1    " Highlight the active tag
let g:tagbar_position = 'botright vertical' " Make panel vertical and place on the right
nmap <C-T> :TagbarToggle<CR>    " Mapping to open and close the panel

""" CtrlFS plugin: searches files on the file system
Plugin 'dyng/ctrlsf.vim'
let g:ctrlsf_backend = 'ack'                            " Use the 'ack' tool as the backend
let g:ctrlsf_auto_close = { "normal":0, "compact":0}    " Auto close the result panel when opening a file
let g:ctrlsf_auto_focus = { "at":"start"}               " Immediately switch focus to the search window
let g:ctrlsf_auto_preview = 0                           " Don't open the preview window automatically
let g:ctrlsf_case_sensitive = "smart"                   " Use the smart case sensitivity search scheme
let g:ctrlsf_default_view = "normal"                    " Normal mode, not compact mode
let g:ctrlsf_regex_pattern = 0                          " Use absolute search by default
let g:ctrlsf_position = "right"                         " Position of the search window
let g:ctrlsf_winsize = "46"                             " Width or height of search window
let g:ctrlsf_default_root = "pwd"                       " Search from the current working directory
nmap <C-F>f <Plug>CtrlSFPrompt                          " 'Ctrl+F' Open search prompt (Normal mode)
xmap <C-F>f <Plug>CtrlSFWordPath                        " 'Ctrl-F + f' Open search prompt with select (Visual mode)
xmap <C-F>F <Plug>CtrlSFWordExec                        " 'Ctrl-F + F' Perform search with selection (Visual mode)
nmap <C-F>n <Plug>CtrlSFWordPath                        " 'Ctrl-F + n' Open search prompt with current word (Normal mode)
nnoremap <C-F>o :CtrlSFOpen<CR>                         " 'Ctrl-F + o' Open CtrlSF window (Normal mode)
nnoremap <C-F>t :CtrlSFToggle<CR>                       " 'Ctrl-F + t' Toggle CtrlSF window (Normal mode)
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>                  " 'Ctrl-F + t' Toggle CtrlSF window (Insert mode)

""" Collection of color schemes
" Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'cocopon/iceberg.vim'        " Dark-blue colors
" Plugin 'articicestudio/nord-vim'    " Artic, north-bluish colors
Plugin 'Badacadabra/vim-archery'    " Arch-linux colors
Plugin 'kristijanhusak/vim-hybrid-material' " Material color-scheme based on w0ng/vim-hybrid
" Plugin 'lifepillar/vim-solarized'   " Optimized solarized theme

" To install addditional plug-in hosted on GitHub, specify using the format:
" Plugin '<github_account>/<repository_name>'

" To remove a plugin, remove the 'Plugin' line and run ':PluginClean' in Vim

call vundle#end()
""""" End Plugin Management """"""

filetype plugin indent on

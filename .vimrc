" [General Configs]
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode 
set autoindent
set cursorline
set shiftwidth=4
set re=1

" [Start-Plugins]
call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" Status
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" IndentLine
Plug 'Yggdroot/indentLine'

" AutocompleteCodeJs
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax
Plug 'w0rp/ale'

" File Manager
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

" [End-Plugins]


" [Interface]

" Select-Theme
colorscheme gruvbox

"Airline-Theme
let g:airline_theme='minimalist'

" Asign-Contrast
let g:gruvbox_contrast_dark = "medium"

" ViewFiles-Icons
let g:webdevicons_enable_nerdtree = 1

" [Functions-Keyboards]
let NERDTreeQuitOnOpen=1
let mapleader=" "


" [Shortcuts]

" Searchkeywords
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

" SaveFiles-Z
noremap <Esc> <Esc>:w<Esc>

" ExitFiles-Z
noremap  z <Esc>:q<Esc>

" [Functions-Languages&Browser]

" AutocompleteCode
let g:coc_local_extensions = [ 'coc-tsserver' ]

" RunCode-Python
noremap <F5> <Esc>:w<CR>:CocCommand python.execInTerminal<CR>

" RunCodeHTMLOnJavaScript
nnoremap <F3> :!open % -a Google\ Chrome<CR>

"StructureHTML
nnoremap ,, :-1read $HOME/.config/.prueba.html<CR>

"If
nnoremap if :-1read $HOME/.config/.js.html<CR>

" CompileCode-Java
" Need JVM 11 and Extension for VSCode Language Support for Java(TM) by Red Hat redhat.java
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %n,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cnext<Return>
map <F11> :cprevious<Return>

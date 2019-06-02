" Plugin Support:
execute pathogen#infect()
filetype plugin indent on "enable plugins
syntax enable "enables syntax highlighting

" IndentLine
let g:indentLine_char = '¦'
map <leader>ig :IndentLinesToggle<CR>

"NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-F> :NERDTreeFind<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"

" Ackvim
let g:ackprg = 'ag --vimgrep'

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <C-t> :Files<Cr>
nnoremap <C-h> :History<CR>
nnoremap <C-b> :Buffers<CR>

" Grip
let g:grip_default_map = 0
nnoremap <C-m> :GripStart<CR>
nnoremap <F5> :GripClean!<CR>

" Tabular
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
endif


" General Config:
set nocompatible "better safe than sorry
set clipboard=unnamed "ensure in vim version has +clipboard
set showmode 
set backspace=indent,eol,start
set number "show line numbers
set relativenumber
set autoindent 
set cindent
set cursorline "highlight current line
set showcmd "show command in bottom bar
set wildmenu "visual autocomplete for command menu
set showmatch "highlight matching [{()}]
set colorcolumn=80 "highlights the 80th line 
set listchars=tab:▸\ ,eol:¬
set hidden "modified buffers can be hidden without saving
set backupcopy=yes "dev servers hot reloading

" Folding 
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Spaces & Tabs
set expandtab "tabs are spaces
set shiftwidth=2 "indentation via >>
set tabstop=2 "number of visual spaces per TAB
set softtabstop=2 "number of spaces per tab

" Searching 
set incsearch "search as characters are entered
set hlsearch "highlight matches

" Colorscheme
"let g:gruvbox_termcolors=16 " uncomment to make darker
let g:rehash256 = 1
set background=dark
colorscheme gruvbox


" Custom Mappings:
let mapleader = "\<Space>"
map <leader>p :set paste! paste? <CR>
map <leader>l :set list! list? <CR>
map <leader>h :noh <CR>
map <leader>m <ESC>:exec &mouse!=""? "set mouse=" : "set mouse=nv"<CR>
nnoremap <leader>n :set nu! rnu! <CR>
nnoremap <leader>ag :Ag<space>

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count) " repeat.vim

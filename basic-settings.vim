"# Colours
syntax enable
filetype plugin on
set termguicolors

"- Gruvbox light/dark theme
"set background=light
set background=dark 
"- Enable gruvbox
autocmd vimenter * colorscheme gruvbox

"# Misc syntax config
"- apply json syntax to .template
autocmd BufNewFile,BufRead *.json.template set syntax=json
"- apply sh syntax to .env example files
autocmd BufNewFile,BufRead *.env.example set syntax=sh

"- Markdown supported code syntax
let g:markdown_fenced_languages = [
	\ 'bash=sh',
	\ 'html',
	\ 'javascript',
	\ 'typescript',
	\ 'javascriptreact',
	\ 'jsx',
	\ 'typescriptreact',
	\ 'tsx',
	\ 'json',
	\ 'css',
	\ 'scss'
	\ ]

"# Tabs and spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

"# File find
set path+=**
set wildmenu
set wildignore+=**/node_modles/**
set hidden

"# UI
let mapleader=","
set number
set relativenumber
set modelines=1
set showcmd
set cursorline
set showmatch

"# Reread files edited outside of vim
set autoread

"# Nerd commenter align left
let g:NERDDefaultAlign = 'left'

"# Searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

"# Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"# vim-gitgutter
set signcolumn=yes
"let g:gitgutter_enabled = 0
nmap <leader>m :GitGutterToggle<CR>
highlight! link SignColumn LineNr

"# Nerdtree
"map <C-n> :NERDTreeToggle<CR>

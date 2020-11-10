" Automatically install vim-plug if not currently installed
" - make sure curl and git are installed
" Some tweaks to hopefully work on windows aswell (not tested)
" - https://github.com/junegunn/vim-plug/issues/837#issuecomment-647079957
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs ' . '"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Add vim-plug (Plugins will be downloaded under the specified directory):
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

" Syntax highlighting
"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'jparise/vim-graphql'

" Only display relative numbering on active buffer
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Theme(s)
Plug 'morhetz/gruvbox'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Multi cursor
Plug 'mg979/vim-visual-multi', { 'branch': 'master' }

" Comments
Plug 'preservim/nerdcommenter'

" Nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Editor config support
Plug 'editorconfig/editorconfig-vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" airline
Plug 'vim-airline/vim-airline'

" List ends here. Plugins become visible to Vim after this call
call plug#end()

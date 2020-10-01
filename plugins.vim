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
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" Theme(s)
Plug 'morhetz/gruvbox'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" List ends here. Plugins become visible to Vim after this call
call plug#end()
" only load following if not opened using vscode-neovim
if !exists('g:vscode')
	source ~/.vim/plugins.vim
	source ~/.vim/coc.vim
	source ~/.vim/basic-settings.vim
	source ~/.vim/termux.vim
endif

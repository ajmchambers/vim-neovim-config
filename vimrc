" only load following if not opened using vscode-neovim
if !exists('g:vscode')
	source ~/.vim/basic-settings.vim
	source ~/.vim/plugins.vim
	source ~/.vim/legacy.vim
endif

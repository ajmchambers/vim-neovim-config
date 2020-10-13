" only load following if not opened using vscode-neovim
if !exists('g:vscode')
	source ~/.vim/plugins.vim
	source ~/.vim/coc.vim
	source ~/.vim/basic-settings.vim
endif

" only load if termux
if isdirectory($HOME . '/.termux')
	source ~/.vim/termux.vim
endif

" only load if WSL
let uname = substitute(system('uname'),'\n','','')
  if uname == 'Linux'
    let lines = readfile"(/proc/version")
    if lines[0] =~ "Microsoft"
      source ~/.vim/wsl.vim
    endif
endif

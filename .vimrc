 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=D:/Editor/vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('D:/Editor/vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 " colorscheme
 " molookai
 NeoBundle 'tomasr/molokai'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.

 NeoBundleCheck

 " setting
 set undodir=D:/Editor/vim/undo
 set backupdir=D:/Editor/vim/backup
 "set viminfo+=nD:/vim/viminfo
 set number
 set cursorline
 set list
 set listchars=tab:>-,trail:-,eol:$,extends:>,precedes:<,nbsp:%
 "set fileformat=unix
 "set fileencoding=utf-8
 set statusline=%F%m%r%h%w\%=[%c,%l/%L]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[TYPE=%Y]
 filetype plugin indent on
 set ruler

 " ↓.gvimrc
 " colorscheme
 colorscheme molokai
 syntax on
 let g:molokai_original = 1
 let g:rehash256 = 1
 set background=dark

 " background transparent
 autocmd GUIEnter * set transparency=220


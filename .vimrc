" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Plugin directory
let s:dein_dir = fnamemodify('../dein', ':p')
" dein.vim
let s:dein_repo_dir = expand(s:dein_dir . '/dein.vim')

" If dein.vim not exist, clone dein.vim
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

" Start setting
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " TOML file
"  let g:toml_dir    = fnamemodify('../toml', ':p')
"  let s:toml      = expand(g:toml_dir . '/dein.toml')
"  let s:lazy_toml = expand(g:toml_dir . '/dein_lazy.toml')

  " cache
"  call dein#load_toml(s:toml,      {'lazy': 0})
"  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " plugin
  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})

  call dein#add('tomasr/molokai')
  call dein#add('kannokanno/previm')
  call dein#add('tyru/open-browser.vim')

  " End setting
  call dein#end()
  call dein#save_state()
endif

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
if dein#check_install()
  call dein#install()
endif

 " setting
set undodir=fnamemodify(../undo)
set backupdir=fnamemodify(../backup)
"set viminfo+=nfnamemodify(../viminfo)
set number
set cursorline
set list
set listchars=tab:>-,trail:-,eol:$,extends:>,precedes:<,nbsp:%
set fileformat=unix
set fileencoding=utf-8
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
" BEGIN ANSIBLE [neovim-config] dein.vim
" directory config
let s:dein_repo_dir = g:vim_cache_dir . '/dein/repos/github.com/Shougo/dein.vim'
let s:dein_dir = g:vim_cache_dir . '/dein'
let s:dein_toml_dir = g:vim_config_dir . '/nvim/dein'

" instlal dein.vim
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif

" load dein.vim
let &runtimepath = s:dein_repo_dir . "," . &runtimepath
if dein#load_state(s:dein_dir)
 call dein#begin(s:dein_dir)

 for s:file in split(glob(s:dein_toml_dir . '/*.toml'), "\n")
  if match(s:file, 'lazy.toml$') >= 0
    call dein#load_toml(s:file,  {'lazy': 1})
  else
    call dein#load_toml(s:file,  {'lazy': 0})
  endif
 endfor

 call dein#end()
 call dein#save_state()
endif
 
" install plugins
if dein#check_install()
 call dein#install()
endif
" END ANSIBLE [neovim-config] dein.vim

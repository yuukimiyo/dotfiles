" BEGIN ANSIBLE [neovim-config] path setup
" =*=*=*=*=*=*=*=*=*=*=*=*=*= path setup *=*=*=*=*=*=*=*=*=*=*=*=*=*="
let g:vim_config_dir = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let g:vim_cache_dir = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let &runtimepath = g:vim_config_dir . "/nvim," . &runtimepath
" END ANSIBLE [neovim-config] path setup
" BEGIN ANSIBLE [neovim-python-config] python path setup
let g:python_host_root = $PYENV_ROOT.'/versions/neovim-python3'
let g:python_host_prog = g:python_host_root.'/bin/python'
let g:python3_host_root = $PYENV_ROOT.'/versions/neovim-python3'
let g:python3_host_prog = g:python3_host_root.'/bin/python'
" END ANSIBLE [neovim-python-config] python path setup
" BEGIN ANSIBLE [neovim-config] import runtime
" =*=*=*=*=*=*=*=*=*=*=*=*=*= import runtime *=*=*=*=*=*=*=*=*=*=*=*=*=*="
runtime! conf.d/*.vim
" END ANSIBLE [neovim-config] import runtime
" BEGIN ANSIBLE [neovim-config] other setup
" =*=*=*=*=*=*=*=*=*=*=*=*=*= color/theme *=*=*=*=*=*=*=*=*=*=*=*=*=*="
colorscheme desert

" =*=*=*=*=*=*=*=*=*=*=*=*=*= etc *=*=*=*=*=*=*=*=*=*=*=*=*=*="
" 画面分割の際に、下方向に開くようにする"
set splitbelow
let g:go_list_type = "quickfix"

" 保管ウィンドウなどの色を変更"
highlight Pmenu ctermbg=11 guibg=#606060
highlight PmenuSel ctermbg=6 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6
" END ANSIBLE [neovim-config] other setup

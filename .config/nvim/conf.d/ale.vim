" BEGIN ANSIBLE [neovim-lsp] ale.vim
" basic settings
"let g:ale_sign_error = '👿'
let g:ale_sign_error = 'E'
"let g:ale_sign_warning = '🤔'
let g:ale_sign_warning = 'W'

let g:ale_sign_style_error = 'S'
let g:ale_sign_style_warning = 'S'

" path settings
let g:ale_python_flake8_executable = g:python3_host_root.'/bin/flake8'
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_autopep8_executable = g:python3_host_root.'/bin/autopep8'
let g:ale_python_autopep8_options = '-m autopep8'
let g:ale_python_isort_executable = g:python3_host_root.'/bin/isort'
let g:ale_python_isort_options = '-m isort'
let g:ale_python_black_executable = g:python3_host_root.'/bin/black'
let g:ale_python_black_options = '-m black'

" set Linters
let g:ale_linters = {
   \ 'python': ['flake8', 'mypy'],
   \ 'go': ['golint', 'golangci-lint'],
   \ 'json': ['jq'],
   \ 'make': ['checkmake'],
   \ 'vim': ['vint'],
   \ 'shell': ['shellcheck'],
   \ 'vue': ['prettier', 'eslint'],
   \ 'javascript': ['prettier', 'eslint'],
   \ 'typescript': ['prettier', 'eslint', 'typecheck'],
   \ }

" set Lit Ignore
" let g:flake8_ignore = 'E501'
let g:ale_python_flake8_options = '--ignore=E501'

" Linter setting.
let g:ale_go_golangci_lint_options = '--enable-all --disable prealloc --disable gochecknoglobals --disable gochecknoinits'
let g:ale_python_mypy_options = '--ignore-missing-imports'

" set Fixer
let g:ale_fixers = {
    \ 'python':     ['autopep8', 'isort', 'black'],
    \ 'go':         ['goimports'],
    \ 'json':       ['jq'],
    \ 'javascript': ['prettier'],
    \ 'typescript': ['prettier'],
    \ 'vue':        ['prettier'],
    \ }

" fix on save
let g:ale_fix_on_save = 0

nmap <silent> <C-n> <Plug>(ale_next_wrap)
nmap <silent> <C-p> <Plug>(ale_previous_wrap)

function! s:ale_list()
  let g:ale_open_list = 1
  call ale#Queue(0, 'lint_file')
endfunction
command! ALEList call s:ale_list()
nnoremap <leader>m  :ALEList<CR>

function! s:ale_clean()
  let g:ale_open_list = 0
  call ale#Queue(0, 'lint_file')
endfunction
command! ALEClean call s:ale_clean()

let mapleader = ','
nnoremap <leader>c  :ALEClean<CR>
nnoremap <leader>m  :ALEList<CR>

augroup alegroup
    autocmd!
    autocmd FileType qf nnoremap <silent><buffer> q :let g:ale_open_list=0<CR>:q!<CR>
    autocmd FileType help,qf,man,ref let b:ale_enabled = 0
augroup end
" END ANSIBLE [neovim-lsp] ale.vim

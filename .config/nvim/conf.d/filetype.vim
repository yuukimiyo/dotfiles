" BEGIN ANSIBLE [neovim-config] filetype.vim
augroup MyTabStop
    autocmd!
    autocmd BufNewFile,BufRead *.rhtml     setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.html      setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.js        setlocal expandtab tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.ts        setlocal expandtab tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.css       setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.scss      setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.md        setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.scala     setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb        setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.erb       setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.{c,cpp,h} setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.py        setlocal expandtab tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.json      setlocal expandtab tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.go        setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.vim       setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead Makefile    setlocal noexpandtab
    autocmd BufNewFile,BufRead *.yml       setlocal tabstop=2 shiftwidth=2 comments= nosmartindent filetype=ansible
    autocmd BufNewFile,BufRead *.yaml      setlocal tabstop=2 shiftwidth=2 comments= nosmartindent filetype=ansible
    autocmd BufNewFile,BufRead *.toml      setlocal tabstop=4 shiftwidth=4
    autocmd BufRead,BufNewFile *.scss      setlocal filetype=scss
    autocmd BufRead,BufNewFile Dockerfile  setlocal filetype=docker
augroup END

augroup filetypedetect
  au BufRead,BufNewFile *.yaml setfiletype ansible
  au BufRead,BufNewFile *.yml  setfiletype ansible
  au BufRead,BufNewFile Dockerfile  setfiletype docker
augroup END

augroup DisableMarkdownConceal
    autocmd!
    autocmd FileType markdown setlocal conceallevel=0
augroup END

augroup MyGitSpellCheck
    autocmd!
    autocmd FileType gitcommit setlocal spell
augroup END
" END ANSIBLE [neovim-config] filetype.vim

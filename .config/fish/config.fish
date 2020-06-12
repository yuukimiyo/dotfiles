# BEGIN ANSIBLE [fish-config] basic config.
##################################################
# 基本環境の設定
set -x LANGUAGE "ja_JP:ja"
set -x LC_ALL "ja_JP.UTF-8"
set -x LC_CTYPE "en_US.UTF-8"
set -x LANG "ja_JP.UTF-8"

##################################################
# XDGの設定
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

##################################################
# 色の設定
# http://fish.rubikitch.com/document-ja/#d1e53459005ca3da4e0f7f4cba3b8d57
set fish_color_command white
# END ANSIBLE [fish-config] basic config.
# BEGIN ANSIBLE [fish-config] peco.
##################################################
# Ctrl+Rで履歴をフィルタリングできるようにする
# function fish_user_key_bindings
#   bind \cr peco_select_history # Ctrl + R
# end
# END ANSIBLE [fish-config] peco.
# BEGIN ANSIBLE [fish-config] fzf.
##################################################
# fzfの設定
set -x FZF_LEGACY_KEYBINDINGS 0
set -x FZF_DEFAULT_OPTS "--height=100%"
# set -x FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"
# END ANSIBLE [fish-config] fzf.
# BEGIN ANSIBLE [python] set pip path
set -x PATH $PATH $HOME/.local/bin
# END ANSIBLE [python] set pip path
# BEGIN ANSIBLE [python-pyenv] set pyenv/virtualenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $HOME/.pyenv/bin $PATH
set -x PIPENV_VENV_IN_PROJECT 1
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
# END ANSIBLE [python-pyenv] set pyenv/virtualenv
# BEGIN ANSIBLE [neovim] add alias
alias vi='/usr/bin/nvim'
# END ANSIBLE [neovim] add alias

# local config
set -U fish_user_paths /snap/bin $fish_user_paths
set -U fish_user_paths ~/bin $fish_user_paths


# BEGIN ANSIBLE [fish-golang] add path
set -x GOPATH ~/go
set -x GOROOT /usr/lib/go-latest
set -U fish_user_paths $fish_user_paths $GOPATH/bin $GOROOT/bin
# END ANSIBLE [fish-golang] add path

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dev-user/source/cloud-sdk/google-cloud-sdk/path.fish.inc' ]; . '/home/dev-user/source/cloud-sdk/google-cloud-sdk/path.fish.inc'; end
set -x PATH /opt/mecab/bin $PATH

autoload -U compinit
compinit
eval "$(direnv hook zsh)"
# export PATH=$HOME/.nodebrew/current/bin:$PATH
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# 余分な空白は詰めて記録
setopt hist_reduce_blanks
#自動補完の設定
source ${HOME}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

PS1="%{$fg[cyan]%}[${USER}@${HOST%%.*} %1~]%(!.#.$)${reset_color} "
export LESSCHARSET=utf-8
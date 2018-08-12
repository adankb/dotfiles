fpath=(/usr/local/share/zsh-completions $fpath)
plugins=(zsh-completions)
autoload -Uz compinit && compinit

# git branch name on the right:
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

export PATH="/usr/local/sbin:$PATH"
# prompt
 PROMPT='%F{green}[%n@%m]%f %F{cyan}%~>%f '

 autoload -Uz vcs_info
 setopt prompt_subst
 zstyle ':vcs_info:git:*' check-for-changes true
 zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
 zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
 zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
 zstyle ':vcs_info:*' actionformats '[%b|%a]'
 precmd() {vcs_info}
 RPROMPT='${vcs_info_msg_0_}'

 #path
 #tree-tagger
 export TREETAGGER_ROOT="$HOME/src/tree_tagger/"
 export PATH="$PATH:$TREETAGGER_ROOT/cmd:$TREETAGGER_ROOT/bin"

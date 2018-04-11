export PS1="\w \$ "

#remove to discard powerline shell
#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}
#
#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi
#endof remove to discard powerline shell


envfile="$HOME/.gnupg/gpg-agent.env"
if [[ -e "$envfile" ]] && kill -0 $(grep GPG_AGENT_INFO "$envfile" | cut -d: -f 2) 2>/dev/null; then
    eval "$(cat "$envfile")"
else
    eval "$(gpg-agent --daemon --allow-preset-passphrase --write-env-file "$envfile")"
fi
export GPG_AGENT_INFO

alias ls='ls --color --classify --human-readable'
alias gvim="gvim 2>/dev/null"
alias firefoxquantum="firefoxquantum 2>/dev/null"
alias wine="wine 2>/dev/null"
alias firefox="firefoxquantum 2>/dev/null"
alias deluge="deluge 2>/dev/null"
alias cp='/bin/cp -i'
alias mv='/bin/mv -i'
alias rm='/bin/rm -i'
alias c='clear'
alias ..='cd ..'
alias ports='netstat -tulanp'
alias v='vim'
alias gv='gvim'
alias apt='sudo apt'

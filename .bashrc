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

alias gvim="gvim 2>/dev/null"
alias firefoxquantum="firefoxquantum 2>/dev/null"

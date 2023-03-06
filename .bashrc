# -------------------------------- History Config {{{
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=300
HISTFILESIZE=400
HISTTIMEFORMAT="%D   %T  "
# }}}
# -------------------------------- Shell Options {{{
shopt -s autocd
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s complete_fullquote
shopt -s dirspell
shopt -s expand_aliases
shopt -s extquote
shopt -s force_fignore
shopt -s globasciiranges
shopt -s hostcomplete
shopt -s interactive_comments
shopt -s progcomp
shopt -s promptvars
shopt -s sourcepath
# }}}
# -------------------------------- PATH {{{
export PATH=~/.local/bin:$PATH
# }}}
# -------------------------------- Bash Prompt {{{
PS1='(\d - \t) - (\u @ \h) \n  \w  $ '
# }}}

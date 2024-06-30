#
# ~/.bashrc
#
# If not running interactively, don't do anything {{{
[[ $- != *i* ]] && return
# }}}
# -------- History Configs {{{
HISTCONTROL=erasedups:ignoredups
shopt -s histappend
HISTSIZE=3000
HISTFILESIZE=4000
HISTTIMEFORMAT="%a %b %d, %Y  %H:%M:%S "

# }}} 
# -------- Shell Options {{{
shopt -s autocd
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s complete_fullquote
shopt -s dirspell
shopt -s expand_aliases
shopt -s extglob
shopt -s extquote
shopt -s force_fignore
shopt -s globasciiranges
shopt -s globskipdots
shopt -s interactive_comments
shopt -s patsub_replacement
shopt -s progcomp
shopt -s promptvars
shopt -s sourcepath
# }}}
# -------- EXPORTS {{{
export TERM="xterm-256color"
export MANPAGER="nvim +Man!" 
# }}}
# -------- Aliases {{{

# Changing "ls" to "eza"
alias ls='eza -al --color-always --group-directories-first' # My preferred listing
alias la='eza -a --color-always --group-directories-first' # all files and directories
alias ll='eza -l --color-always --group-directories-first' # long format
alias lt='eza -aT --color-always --group-directories-first' # tree listing
alias l.='eza -al --color-always --group-directories-first ../' # ls on the PARENT directory
alias l..='eza -al --color-always --group-directories-first ../../' # ls on the direcotry 2 levels up
alias l...='eza -al --color-always --group-directories-first ../../../' # ls on the directory 3 levels up

# Pacman and Yay
alias pacsyu='sudo pacman -Syu' # update only standard packages
alias pacsyyu='sudo pacman -Syyu' # refresh pkglist & update standard packages
alias parsua='paru -Sua --noconfirm' # update only AUR packages (paru)
alias parsyu='paru -Syu --noconfirm' # update standard pkgs and AUR pkgs (paru)
alias yaysua='yay -Sua --noconfirm' # update only AUR pkgs (yay)
alias yaysyu='yay -Syu --noconfirm' # update standard pkgs and AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck' # remove packman lock
alias orphan='sudo pacman -Rns $(pacman -Qtdq)' # removing orphan pkgs (DANGEROUS!)
alias lock='sudo touch /var/lib/pacman/db.lck' # reinstating pacman lock

# Vim
alias vim='nvim'

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# adding flags
alias df='df -h'	# human readable sizes
alias free='free -m'	# show sizes in MB
alias grep='grep --color=auto'		# colorize output (good for log files)

# ps
alias psa='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps auxf | sort -nr -k 4'

# Merge Xresources
alias merge='xrdb -merge ~/.Xresources'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'
alias tag='git tag'
alias newtag='git tag -a'

# get error messages from Journalctl
alias jctl='journalctl -p 3 -xb'

# gpg encryption
# verify signature for iso's
alias gpg-check='gpg2 --keyserver-options auto-key-retrieve --verify'
# recieve the key of a developer
alias gpg-retrieve='gpg2 --keyserver-options auto-key-retrieve --recieve-keys'

# }}}
# -------- Bash Prompt {{{
PS1='(\t - \d) \n (\u @ \h) \w $ '
# }}}
# -------- Neofetch {{{
neofetch 
# }}}













#     _             _       ____            _              
#    | | ___  _ __ ( )___  | __ )  __ _ ___| |__  _ __ ___ 
# _  | |/ _ \| '_ \|// __| |  _ \ / _` / __| '_ \| '__/ __|
#| |_| | (_) | | | | \__ \ | |_) | (_| \__ \ | | | | | (__ 
# \___/ \___/|_| |_| |___/ |____/ \__,_|___/_| |_|_|  \___|
#
#
#
# I can be found on most of the Social Media.
# 
# I am on the following;
#  
# Facebook: https://www.facebook.com/jdhighley
# Twitter: https://twitter.com/jdhighley
# IG: https://www.instagram.com/highleyjon
# TUMBLR: https://www.tumblr.com/jhigh800
# Reddit: https://www.reddit.com/jdhighley
# 

# History settings
HISTCONTROL=ignoreboth:erasedups

shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=20000

HISTTIMEFORMAT="/t "

# Shell Options
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
shopt -s interactive_comments
shopt -s progcomp
shopt -s promptvars
shopt -s sourcepath

# Ccache
export PATH="/usr/lib/ccache/bin/:$PATH"
export MAKEFLAGS="-j5 -l4"

# Bash Functions

extract() {
    local c e i

    (($#)) || return

    for i; do
        c=''
        e=1

        if [[ ! -r $i ]]; then
            echo "$0: file is unreadable: \`$i'" >&2
            continue
        fi

        case $i in
            *.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))))
                   c=(bsdtar xvf);;
            *.7z)  c=(7z x);;
            *.Z)   c=(uncompress);;
            *.bz2) c=(bunzip2);;
            *.exe) c=(cabextract);;
            *.gz)  c=(gunzip);;
            *.rar) c=(unrar x);;
            *.xz)  c=(unxz);;
            *.zip) c=(unzip);;
            *)     echo "$0: unrecognized file extension: \`$i'" >&2
                   continue;;
        esac

        command "${c[@]}" "$i"
        ((e = e || $?))
    done
    return "$e"
}


cl() {
	local dir="$1"
	local dir="${dir:=$HOME}"
	if [[ -d "$dir" ]]; then
		cd "$dir" >/dev/null; ls
	else
		echo "bash: cl: $dir: Directory not found"
	fi
}

ipif() { 
    if grep -P "(([1-9]\d{0,2})\.){3}(?2)" <<< "$1"; then
	 curl ipinfo.io/"$1"
    else
	ipawk=($(host "$1" | awk '/address/ { print $NF }'))
	curl ipinfo.io/${ipawk[1]}
    fi
    echo
}

# Color Bash Prompt

PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(( `sed -n "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p" /proc/meminfo`/1024))"\033[38;5;22m/"$((`sed -n "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo`/1024 ))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m"' \
PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)\$ '

# NeoFetch
neofetch
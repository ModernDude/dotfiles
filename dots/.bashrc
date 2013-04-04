


# modified commands
# alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias ..='cd ..'



export NODE_NO_READLINE=1

# ls
alias ls='ls -G'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export TERM=xterm-256color


export PATH=/usr/local/share/npm/bin:~/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH:/usr/local/share/npm/lib/node_modules:/Applications/Postgres.app/Contents/MacOS/bin

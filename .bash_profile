alias ll='ls -la'
alias l.='ls -d .*'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mkdir='mkdir -pv'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

alias tb="nc termbin.com 9999"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"

####### GoLang Settings #######
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

export GOPATH=$HOME/go/golib
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:$HOME/go/code
####### GoLang Settings #######

export PATH="/usr/local/opt/flex/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

####### Terminal colors #######
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$  \n| => "
export PS2="| => "
####### Terminal colors #######
export PATH="/usr/local/opt/llvm/bin:$PATH"

####### MPI #######
export PMIX_MCA_gds=hash
####### MPI #######

###### Use GCC from brew by default #####
export CC=/usr/local/bin/gcc-10
export CPP=/usr/local/bin/cpp-10
export CXX=/usr/local/bin/g++-10
###### Use GCC from brew by default #####

##### use gnu-sed instead of usualsed #####
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
##### use gnu-sed instead of usualsed #####

##### to auto actuvate venv #####
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
##### to auto actuvate venv #####

##### shell history #####
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
export HISTTIMEFORMAT="%F "              # print data
shopt -s histappend                      # append to history, don't overwrite it
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
##### shell history #####

##### autocomplete #####
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
##### autocomplete #####


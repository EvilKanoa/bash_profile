eval $(thefuck --alias)

alias json="python -m json.tool"
alias uni="cd ~/Documents/University"
alias uog="ssh uog"
alias work="cd ~/Documents/MappedIn/;echo Enjoy your day, Kanoa!"
alias run_mongo="mongod --config /usr/local/etc/mongod.conf"
alias npm="CPPFLAGS=-I/usr/local/opt/openssl/include LDFLAGS=-L/usr/local/opt/openssl/lib npm"

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gd='git diff '
alias go='git checkout '
alias gps='git push '
alias gpl='git pull '
alias gm='git commit -m '
alias grb='git rebase '
alias gf='git fetch '
alias gl='git log --graph --all'
alias md5sum='md5 -r'

export CLICOLOR=1
export LSCOLORS=ExfxcxdxBxegedabagacad

source ~/.git-completion.bash
source ~/.git-prompt.sh
__git_complete gs _git_status
__git_complete ga _git_add
__git_complete gb _git_branch
__git_complete gc _git_commit
__git_complete gd _git_diff
__git_complete go _git_checkout
__git_complete gps _git_push
__git_complete gpl _git_pull
__git_complete gm _git_commit
__git_complete gl _git_log

GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_DESCRIBE_STYLE="branch"
PROMPT_COMMAND=__prompt_command
__prompt_command() {
    local EXIT="$?"
    PS1=""

    local red="\[\e[0;31m\]"
    local grn="\[\e[0;32m\]"
    local prp="\[\e[0;95m\]"
    local blu="\[\e[0;94m\]"
    local wht="\[\e[0;36m\]"
    local rst="\[\e[0m\]"
    local bld="\[\e[1m\]"

    main_color=""
     if [ $EXIT != 0 ]; then
        main_color+="${red}"
    else
        main_color+="${grn}"
    fi

    local git=$(__git_ps1 "%s") 
#    if [ $git != "" ]; then
#        git="${main_color}-(${blu}${git}${main_color})"
#    fi

    PS1+="${main_color}(${prp}\u@\h${main_color})-(${prp}${bld}\w${rst}${main_color})${blu} ${git}"
    PS1+="${main_color}\n"
    PS1+="(${wht}\D{%F %T}${main_color}) => ${rst}"
}

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

if [ -f ~/.bash_completion ]; then
    source ~/.bash_completion
fi

export CONFLUENT_CURRENT="/usr/local/confluent/var"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"


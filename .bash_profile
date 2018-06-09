eval $(thefuck --alias)

alias json="python -m json.tool"
alias uni="cd ~/Documents/University"
alias uog="ssh khaley@portkey.socs.uoguelph.ca ssh linux.socs.uoguelph.ca"
alias work="cd ~/Documents/MappedIn/;echo Enjoy your day, Kanoa!"

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gd='git diff '
alias go='git checkout '
alias gps='git push '
alias gpl='git pull '
alias gm='git commit -m '
alias gl='git log --graph --all'
alias md5sum='md5 -r'

export CLICOLOR=1
export LSCOLORS=ExfxcxdxBxegedabagacad

source ~/.git-completion.bash
source ~/.git-prompt.sh

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
export PATH="/usr/local/opt/node@6/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"

if [ -f ~/.bash_completion ]; then
    source ~/.bash_completion
fi

export CONFLUENT_CURRENT="/usr/local/confluent/var"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


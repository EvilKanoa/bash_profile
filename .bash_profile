alias json="python -m json.tool"
alias zombie="cd ~/Documents/ZombieWorld/ZombieWorld"
alias uni="cd ~/Documents/University"

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

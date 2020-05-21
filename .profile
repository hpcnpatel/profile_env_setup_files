#! .profile file for a linux env

test -s ~/.alias && . ~/.alias || true
# --------------
# alias basic
# --------------
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -latr'                         # Preferred 'ls' implementation
alias l='ls -ltr'                           # Preferred 'll' implementation
# --------------
alias Nsinfo="sinfo -a | awk '{print $1,$2,$3,$4,$5}' | column -t"
# --------------
#git alias
# --------------
alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'
# --------------
#
#   Change Prompt
#   ------------------------------------------------------------
##   export PS1="______________________\n| \w @ \h (\u) \n| => "
##    export PS2="| => "

#   Set Default Editor (change 'vim' to the editor of your choice)
#   ------------------------------------------------------------
#    export EDITOR=/usr/local/bin/atom

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
# for light colors   
   export CLICOLOR=1
   export LSCOLORS=ExFxBxDxCxegedabagacad
# for dark colors   
#   export CLICOLOR=1
#   export LSCOLORS=GxFxCxDxBxegedabagaced

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
export HISTFILESIZE=900000
export HISTSIZE=900000
shopt -s histappend 
export HISTCONTROL=erasedups    

# --------------
#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

#! .profile file for a linux env

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
#git alias
alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'
# --------------
# --------------
# alias for CLusters and Supercomputers
# LRZ specific
# --------------
#Login nodes
alias cm21='lxlogin1.lrz.de'
alias cm22='lxlogin2.lrz.de'
alias cm23='lxlogin3.lrz.de'
alias cm24='lxlogin4.lrz.de'
alias cm38='lxlogin8.lrz.de'
alias im10='lxlogin10.lrz.de'
#Development nodes
alias sminstall2='ssh -Y install2.smuc.lrz.de'
alias sminstall1='ssh -Y install.smuc.lrz.de'
alias cm2devel='cm2devel.cos.lrz.de'
alias cm3devel='mcct03.cos.lrz.de'
alias mcct4='mcct04.cos.lrz.de'
alias ivydevel='ivy-devel.cos.lrz.de'
alias wsc20='wsc20.srv.lrz.de'
alias wsc40='wsc40.srv.lrz.de'
alias smng6='skx6.supermuc.lrz.de'
alias smng='skx.supermuc.lrz.de'
alias sminstall='devel.supermuc.bayern'
alias smdevel='10.156.196.8' #same as sminstallng

# --------------
# alias basic
# --------------
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -latr'                         # Preferred 'ls' implementation
alias l='ls -ltr'                           # Preferred 'll' implementation
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

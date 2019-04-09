#! .profile file for a linux env


HISTCONTROL=ignoreboth
export HISTFILESIZE=900000
export HISTSIZE=900000
shopt -s histappend 
export HISTCONTROL=erasedups    

# --------------
# alias for CLusters and Supercomputers
# LRZ specific
# --------------
#Login nodes
alias smsb='ssh -Y sb.supermuc.lrz.de'
alias smwm='ssh -Y wm.supermuc.lrz.de'
alias smhw='ssh -Y hw.supermuc.lrz.de'
alias cm25='ssh -Y lxlogin5.lrz.de'
alias cm26='ssh -Y lxlogin6.lrz.de'
alias cm27='ssh -Y lxlogin7.lrz.de'
alias cm38='ssh -Y lxlogin8.lrz.de'
alias im10='ssh -Y lxlogin10.lrz.de'
#alias im10='ssh -Y ivy-login.cos.lrz.de'
#Development nodes
alias sminstall2='ssh -Y install2.smuc.lrz.de'
alias sminstall1='ssh -Y install.smuc.lrz.de'
alias mpp2='ssh -Y mpp2-devel.cos.lrz.de'
alias mpp3='ssh -Y mcct03.cos.lrz.de'
alias mcct3='ssh -Y mcct03.cos.lrz.de'
alias mcct4='ssh -Y mcct04.cos.lrz.de'
alias ivyinstall='ssh -Y ivy-devel.cos.lrz.de'
alias test_sklinstall='ssh -Y skngnsr0r2hc01.cos.lrz.de'
alias wsc20='ssh wsc20.srv.lrz.de'
alias smng6='skx6.supermuc.lrz.de'
alias smng='skx.supermuc.lrz.de'
alias sminstallng='devel.suepermuc.bayern'
alias smdevel='10.156.196.8' #same as sminstallng

# --------------
# alias basic
# --------------
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -lhArtFGlhp'                   # Preferred 'ls' implementation
alias l='ls -lhrt'                          # Preferred 'll' implementation
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

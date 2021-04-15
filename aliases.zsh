# if oh-my-zsh is in use, then put the file aliases.zsh in $ZSH_CUSTOM
# this will tell oh-my-zsh to automatically load all the stuff
alias ls="ls --color=auto"
alias lls='ls -lhS'
alias ll='ls -lh'
alias llrt='ls -lhrt'
alias llrta='ls -lahrt'
alias la='ls -a'
alias lla='ls -la'
alias lrt='ls -rt'
alias lsd='ls -l | grep ^d'
alias del='rm -i'
alias trash='rm -rf ~/.Trash/*'
alias ddel='rm -ri'
alias ddelf='rm -rf'
alias dh='du -h'
alias dfh='df -h'
alias dhcs='du -hcs'
alias topu='top -o cpu -U franz'
alias htopu='htop -u grossetti'
alias psu='ps -U franz -f'
alias rw+='chmod g+rw'
alias x+='chmod o+x'
alias x-='chmod o-x'
alias stampa='lpr -o sides=two-sided-long-edge -P _10_48_136_10'
alias stampanti='lpstat -p -d'
alias zshconfig='vim ~/.zshrc'
alias zshaliases='vim $ZSH_CUSTOM/aliases.zsh'
alias p10kconfig='vim ~/.p10k.zsh'
alias vimconfig='vim ~/.vimrc'

# path aliases
alias cellar='cd /usr/local/Cellar'
alias sw='cd ~/Dropbox/Software'
alias movie='cd ~/Movies'
alias music='cd ~/Music'
alias drive='cd ~/Google\ Drive'
alias dropbox='cd ~/Dropbox'
alias onedrive='cd ~/OneDrive\ -\ Università\ Commerciale\ Luigi\ Bocconi'
alias bocconi='cd ~/Dropbox/Bocconi'
alias papers='cd ~/Dropbox/Bocconi/Papers'

# applications aliases
alias pycharm='open /Applications/PyCharm\ CE.app'
#alias notebook='jupyter notebook'
alias notebook='python3 -m notebook'
alias skim='open /Applications/Skim.app'

# SSH aliases
alias bidsa='ssh -CY grossetti@bidsa-sc.sm.unibocconi.it'
alias dsba='ssh -CY grossetti@dsba.sm.unibocconi.it'
alias gucci1='ssh -CY grossetti@guccilab01.sm.unibocconi.it'
alias gucci2='ssh -CY grossetti@guccilab02.sm.unibocconi.it'
alias accserver='ssh -CY franz@10.1.101.83'

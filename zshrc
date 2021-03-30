#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#
# sourcing configuration file for git prompt
source ~/Dropbox/Software/zsh-git-prompt/zshrc.sh

# this is for autojump
#[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# defining JAVA_HOME
export JAVA_HOME="/usr/libexec/java_home:$JAVA_HOME"

# adding ssh profile for git
#ssh-add ~/.ssh/portos_sierra
#ssh-add ~/.ssh/violeta_bitbucket
#ssh-add ~/.ssh/rancor

#GIT_PROMPT_EXECUTABLE="haskell"

date

# loading autocompletion
autoload -U compinit
compinit

# allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

# never ever beep ever
setopt NO_BEEP

# automatically decide when to page a list of completions
LISTMAX=10

# load colors
autoload -U colors
colors

# edited peppo prompt
#PROMPT='%B[%n@%m]%b %~ $(git_super_status)> '
PROMPT='%B[%n@%m]%b %1d $(git_super_status)> '

# defining path

#export PATH=/usr/local/Cellar/python@3.8/3.8.3/bin:/usr/local/bin:/usr/bin:/bin
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin/:/usr/sbin/:/sbin:$PATH"

#path=(/usr/local/Cellar/python@3.8/3.8.3/bin/python3 /usr/local/bin /usr/local/texlive/2018/bin/x86_64-darwin /usr/bin /bin ~/.local/bin $path)

export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# this is for miniconda
#export PATH="/Users/grossetti/miniconda3/bin:$PATH"
#export PATH="/usr/local/opt/python3/bin/python3:$PATH"
#export PATH="/usr/local/Cellar/python@3.8/3.8.3/bin/python3:$PATH"
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/opt/bin:$PATH"
#export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
#export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig:$PKG_CONFIG_PATH
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home"
## adding dynamic library for darknet
##export DYLD_LIBRARY_PATH=/Users/franz2/Dropbox/Software/Python/darknet/
##export LD_LIBRARY_PATH=/Users/franz2/Dropbox/Software/Python/darknet/

# this is needed to mimic the old /usr/include with all the headers
#export CPATH="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/"
#XCBASE=`xcrun --show-sdk-path`
#export C_INCLUDE_PATH=$XCBASE/usr/include
#export CPLUS_INCLUDE_PATH=$XCBASE/usr/include
#export CC=/usr/bin/gcc
export CC=/usr/local/bin/gcc-10
#export CMAKE_C_COMPILER=/usr/local/bin/gcc-10
export CPP=/usr/local/bin/g++-10
#export CPP=/usr/bin/g++
##export CMAKE_CXX_COMPILER=/usr/local/bin/g++-10
#export CMAKE_CXX_COMPILER=/usr/bin/g++
#export CPLUS_INCLUDE_PATH=/usr/local/opt/llvm/include/c++/v1:/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/include
##export LIBRARY_PATH=$XCBASE/usr/lib
#export LIBRARY_PATH=$XCBASE/usr/lib
#
## alias for C and C++
#alias gcc='gcc-10'
#alias g++='g++-10'

# defining default virtualenv wrapper for python
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

#export PATH
# exporting GOOGLE API credentials
export GOOGLE_APPLICATION_CREDENTIALS="/Users/franz2/Dropbox/Bocconi/fashion_project/Google_API/codes/instavision-e17bc30e9002.json"


#alias comandi
function cerca() {
    for i in ${*}
    do
        echo $i
        find . -name $i -print
    done
}

#function edit {nedit $1 &}
#alias ls='ls --color=auto'
alias ls='/bin/ls -G'
alias lls='ls -lhS'
alias ll='ls -lh'
alias llrt='ls -lhrt'
alias llart='ls -lahrt'
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

#alias percorsi
alias cellar='cd /usr/local/Cellar'
alias datihf='cd ~/Documents/Politecnico/Scompenso/dati/'
alias sw='cd ~/Dropbox/Software'
alias poli='cd ~/Dropbox/Politecnico'
alias movie='cd ~/Movies'
alias music='cd ~/Music'
alias drive='cd ~/GoogleDrive'
alias dropbox='cd ~/Dropbox'
alias onedrive='cd ~/OneDrive\ -\ Università\ Commerciale\ Luigi\ Bocconi'
alias bocconi='cd ~/Dropbox/Bocconi'

# alias applications
alias pycharm='open /Applications/PyCharm\ CE.app'
#alias notebook='jupyter notebook'
alias notebook='python3 -m notebook'
alias skim='open /Applications/Skim.app'

# ssh franz
alias parker='ssh -CY franz@parker.mib.infn.it'
alias violeta='ssh -CY franz@192.168.0.4'
alias tosca='ssh -CY grossetti@10.48.136.25'
#alias tosca='ssh -Y grossetti@10.48.139.77'
alias tosca_ext='ssh -CY grossetti@tosca.mate.polimi.it'
alias mox41='ssh -CY grossetti@10.48.139.91'
alias dott2='ssh -CY grossetti@10.48.139.96'
alias dott6='ssh -CY grossetti@10.48.139.101'
alias gtel='ssh e3fgross@10.180.228.83'
alias bidsa='ssh -CY grossetti@bidsa-sc.sm.unibocconi.it'
alias dsba='ssh -CY grossetti@dsba.sm.unibocconi.it'
alias gucci1='ssh -CY grossetti@guccilab01.sm.unibocconi.it'
alias gucci2='ssh -CY grossetti@guccilab02.sm.unibocconi.it'
alias accserver='ssh -CY franz@10.1.101.83'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/franz2/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/franz2/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/franz2/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/franz2/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/grossetti/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/grossetti/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/grossetti/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/grossetti/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#alias python=/usr/bin/python3
#alias pip=/usr/local/bin/pip3
#a test comment

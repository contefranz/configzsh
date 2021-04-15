#!/bin/zsh

THEHOME=~/
OH_MY_ZSH_DIR=~/.oh-my-zsh
ZSH_CUSTOM=$OH_MY_ZSH_DIR/custom
init_config_dir=$PWD

echo "---"
echo "INSTALLING OH-MY-ZSH"
echo "---"

if [ ! -d $OH_MY_ZSH_DIR ]; then
    echo "There is no oh-my-zsh directory. Installing...";
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "oh-my-zsh is already installed"
fi

echo "---"
echo "INSTALLING POWERLEVEL10K"
echo "---"

if [ ! -d $ZSH_CUSTOM/themes/powerlevel10k ]; then
    echo "No prior installation. Installing powerlevel10k";
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
else
    echo "powerlevel10k is already installed. Remove it and re-launch init.sh";
fi

echo "---"
echo "SETTING CONFIG FILES FOR OH-MY-ZSH IN $ZSH_CUSTOM"
echo "adding aliases - custom paths - miscellanea"
echo "---"

ln -sv $init_config_dir/aliases.zsh $ZSH_CUSTOM
ln -sv $init_config_dir/custom_paths.zsh $ZSH_CUSTOM
ln -sv $init_config_dir/miscellanea.zsh $ZSH_CUSTOM

echo "---"
echo "ADDING VIM CONFIG FILES IN $THEHOME"
echo "---"

if [ ! -f ~/.vimrc ]; then
    echo "adding .vimrc in $THEHOME";
    ln -sv $init_config_dir/vimrc $THEHOME.vimrc
else
    echo "replacing current .vimrc";
    mv $THEHOME.vimrc $THEHOME.vimrc.configzsh.bck
    ln -sv $init_config_dir/vimrc $THEHOME.vimrc
fi

echo "---"
echo "ADDING GIT CONFIG FILE IN $THEHOME"
echo "---"

if [ ! -f ~/.gitconfig ]; then
    echo "adding .gitconfig in $THEHOME";
    ln -sv $init_config_dir/vimrc $THEHOME.vimrc
else
    echo "replacing current .gitconfig"
    mv $THEHOME.gitconfig $THEHOME.gitconfig.configzsh.bck
    ln -sv $init_config_dir/gitconfig $THEHOME.gitconfig

echo "---"
echo "ADDING R-MAKEVARS FILE IN $THEHOME"
echo "---"

if [ ! -f ~/.R/Makevars]; then
    echo "adding ~/.R/Makevars in $THEHOME";
    ln -sv $init_config_dir/Makevars $THEHOME.R/Makevars
else
    echo "replacing current ~/.R/Makevars"
    mv $THEHOME.R/Makevars $THEHOME.R/Makevars.configzsh.bck
    ln -sv $init_config_dir/Makevars $THEHOME.R/Makevars

echo "---"
echo "MAKING THE TERMINAL SILENT WHEN IT OPENS"
echo "---"

if [ ! -f ~/.hushlogin ]; then
    echo "shhhh initial terminal message";
    touch $THEHOME/.hushlogin
else
    echo "terminal already silent";
fi


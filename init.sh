#!/bin/zsh

THEHOME=~/
OH_MY_ZSH_DIR=~/.oh-my-zsh
ZSH_CUSTOM=$OH_MY_ZSH_DIR/custom
repo_git_zsh=~/Dropbox/Software/zsh-git-prompt
init_config_dir=~/Dropbox/Software/configzsh

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
    echo "adding .vimrc in ~/";
    ln -sv $init_config_dir/vimrc $THEHOME/.vimrc
else
    echo "replacing current .vimrc";
    rm $THEHOME/.vimrc
    ln -sv $init_config_dir/vimrc $THEHOME/.vimrc
fi

echo "---"
echo "MAKING THE TERMINAL SILENT WHEN IT OPENS"
echo "---"

if [ ! -f ~/.hushlogin ]; then
    echo "shhhh initial terminal message";
    touch $THEHOME/.hushlogin
else
    echo "terminal already silent";
fi


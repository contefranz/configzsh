#!/bin/zsh

OH_MY_ZSH_DIR=~/.oh-my-zsh
ZSH_CUSTOM=$OH_MY_ZSH_DIR/custom
repo_git_zsh=~/Dropbox/Software/zsh-git-prompt
init_config_dir=~/Dropbox/Software/configzsh # init directory

if [ ! -d $OH_MY_ZSH_DIR ]; then
    echo "There is no oh-my-zsh directory. Installing...";
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "oh-my-zsh is already installed" 
fi

echo "---"
echo "linking user configuration files in $ZSH_CUSTOM"
echo "---"

ln -sv $init_config_dir/aliases.zsh $ZSH_CUSTOM
ln -sv $init_config_dir/custom_paths.zsh $ZSH_CUSTOM
ln -sv $init_config_dir/miscellanea.zsh $ZSH_CUSTOM
ln -sv ./vimrc ~/.vimrc
# set up zsh + git
#ln -sv $init_config_dir/gitconfig ~/.gitconfig
#ln -sv $init_config_dir/zshrc ~/.zshrc   # for non-interactive shells

# set up vim
#ln -sv $init_config_dir/vim ~/.vim
#ln -sv $init_config_dir/vimrc ~/.vimrc
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#vim +PluginInstall +qall

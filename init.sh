#!/bin/zsh

repo_git_zsh=~/Dropbox/Software/zsh-git-prompt
init_config_dir=~/Dropbox/Software/configzsh # init directory

if [ ! -d $repo_git_zsh ]; then
    echo "repo does not exist. Cloning...";
    git clone git@github.com:olivierverdier/zsh-git-prompt.git ~/Dropbox/Software 
else
    echo "zsh-git-prompt repo already exists in the path";
fi

# set up zsh + git
ln -sv $init_config_dir/gitconfig ~/.gitconfig
ln -sv $init_config_dir/zshrc ~/.zshrc   # for non-interactive shells

# set up vim
ln -sv $init_config_dir/vim ~/.vim
ln -sv $init_config_dir/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

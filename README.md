# What's this?

This repository contains the script `init.sh` to automatized the creation of
customized `.dotfiles` for the following environments: 

1. `zsh` with `oh-my-zsh`.
2. `powerlevel10k` theme for `oh-my-zsh`.
3. `vim` with a set of plugins and nice settings.
3. `.gitconfig` global file. 


There is nothing fancy here...just launch the initialization script with `./init.sh`...

### MacOS Requirements

In order to use `init.sh` you need to have the following requirements satisfied:

* Make sure you have `brew` installed. To check this, run `which brew` at the
  CLI. You should be prompted with the path to `brew`. In case `brew` is not
  installed, I recommend to visit the official webpage to check how to install
  it. Just click [here](https://brew.sh). 

* Make sure you have `zsh` installed via `brew`. Do not use the built-in version
  located in `/bin/zsh`. Run `which zsh` and if you see something like
  `/usr/local/bin/zsh` then you are good to go. If you don't, install it as
  follows `brew install zsh`. 

### A Fresh Start

* `init.sh` does its best at checking you don't already have prior installations
  of `oh-my-zsh` and `powerlevel10k`. If you want to be sure to start the
  configuration from scratch, just run the following:

  ```
  rm ~/.oh-my-zsh
  rm ~/.zshrc
  rm ~/.p10k.zsh
  ```

* `init.sh` also installs a customized version of `vim` with additional plugin
  via `vim-plug` and a modified `.vimrc`. The script is bothered if it finds
  that files are already there. Clean everything by running: 

  ```
  rm ~/.vimrc
  rm -rf ~/.vim
  ```

### Issues with oh-my-zsh

In some cases, `oh-my-zsh` finds issues related to two specific folders which
belong to `zsh` installed with `brew`. The error message is as follows: 

`[oh-my-zsh] Insecure completion-dependent directories detected:`

The usual suspects are the following two folders: `usr/local/share/zsh` and
`usr/local/share/zsh/site-functions`. If these are the folders you are having
issues with, you could refer to [this SO post](https://stackoverflow.com/questions/61433167/zsh-detects-insecure-completion-dependent-directorie) for suggestions.

I personally found the following workaround to solve my issue. 

```
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions
```

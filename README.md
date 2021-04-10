# What's this?

This repository contains a script to automatized the creation of
customized `.dotfiles` under MacOS for the following environments: 

1. `zsh` with `oh-my-zsh`.
2. `powerlevel10k` theme for `oh-my-zsh`.
3. `vim` with a set of plugins and nice settings.
3. `.gitconfig` global file. 

In order for `init.sh` to work properly, make sure you execute it from the
repository folder. To execute the script just type:

```
./init.sh
```

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

* Make sure to remove any prior `git` configuration file in your home directory
  as follows: 

  ```
  rm ~/.gitconfig
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

### Enabling Plugins and Themes in `zsh`

`init.sh` prepares everything for you but it does not physically change the
default configuration file for you with the expection for `vim`. This means that
if you want `zsh-autosuggestions`  you will have to install them. The same
applies to `powerlevel10k`. You need to explicitly set it in the new `~/.zshrc`
that `init.sh` just prepared for you. 

Some `zsh` plugins that come in handy are:

* `zsh-autosuggestions`: click [here](https://github.com/zsh-users/zsh-autosuggestions) to visit the repository.

* `zsh-syntax-highlighting`: click [here](https://github.com/zsh-users/zsh-syntax-highlighting) to visit the repository. 

To enabling `powerlevel10k`, please follow the guidelines provided by
`oh-my-zsh` and change the variable `ZSH_THEME` in `~/.zshrc` accordingly. For a
default installation, use `"powerlevel10k/powerlevel10K"`. 

You can read more about this theme
[here](https://github.com/romkatv/powerlevel10k#powerlevel10k). 



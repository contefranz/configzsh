This is a very simple repo to gather that boring set of instructions to automatically 
define a nice `zsh` and `vim` environment.

There is nothing fancy...just launch the initialization script with `./init.sh`...

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

* `init.sh` does its best at checking you don't already have prior installation
  of `oh-my-zsh` and `powerlevel10k`. If you want to be sure to start from
  scratch the configuration, just run the following:

  ```
  rm ~/.oh-my-zsh
  rm ~/.zshrc
  rm ~./p10k.zsh
  ```

* `init.\   

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

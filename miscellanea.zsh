##############################################################
##############################################################
###################### MISCELLANEA  ##########################
##############################################################

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

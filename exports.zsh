# # The next line updates PATH for the Google Cloud SDK.
# eval source $HOME/Applications/google-cloud-sdk/path.zsh.inc
#
# # The next line enables shell command completion for gcloud.
# eval source $HOME/Applications/google-cloud-sdk/completion.zsh.inc
#
# # enable the google cloud command cli auto completion for zsh
# eval source <(kubectl completion zsh)
#
# # Enabling the kubernetes helm auto completion
# if [ ! $(which helm >> /dev/null) ]; then
#    eval source <(helm completion zsh)
# fi

export GOPATH=$HOME/projects/go
export GOROOT=/opt/homebrew/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:$HOME/.bin:$HOME/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec
export HOMEBREW_NO_AUTO_UPDATE=1

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pyenv exports
export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PYENV_ROOT/shims:$PATH
eval "$(pyenv init -)"

# nvm exports
compaudit | xargs chmod g-w
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# workaround for python crash: We cannot safely call it or ignore it in the fork() child process. Crashing instead. Set a breakpoint on objc_initializeAfterForkError to debug.
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# TF configurations
export TF_CLI_CONFIG_FILE=$HOME/.terraformrc
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugins-cache"

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
export FLUTTER_PATH=$HOME/projects/flutter
export GOROOT=/usr/local/opt/go/libexec
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:$FLUTTER_PATH/bin
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH=$ANDROID_SDK/emulator:$PATH
export fpath=(/usr/local/share/zsh-completions $fpath)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HTTP_PROXY=http://127.0.0.1:1187
export HTTPS_PROXY=http://127.0.0.1:1187
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export HOMEBREW_NO_AUTO_UPDATE=1
export TILLER_NAMESPACE=helm-tiller

# pyenv exports
export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PYENV_ROOT/shims:$PATH
eval "$(pyenv init -)"

# nvm exports
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

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
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH="/usr/local/opt/gettext/bin:$PATH"
export fpath=(/usr/local/share/zsh-completions $fpath)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HTTP_PROXY=http://127.0.0.1:1087
export HTTPS_PROXY=http://127.0.0.1:1087

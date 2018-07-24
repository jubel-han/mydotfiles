# The next line updates PATH for the Google Cloud SDK.
source $HOME/Applications/google-cloud-sdk/path.zsh.inc
# The next line enables shell command completion for gcloud.
source $HOME/Applications/google-cloud-sdk/completion.zsh.inc

# enable the google cloud command cli auto completion for zsh
source <(kubectl completion zsh)

# Enabling the kubernetes helm auto completion
if [ ! $(which helm >> /dev/null) ]; then
source <(helm completion zsh)
fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

export GOPATH=$HOME/projects/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH="/usr/local/opt/gettext/bin:$PATH"
fpath=(/usr/local/share/zsh-completions $fpath)

export HTTP_PROXY=http://127.0.0.1:1087
export HTTPS_PROXY=http://127.0.0.1:1087

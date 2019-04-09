# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh

# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# Enabling the kubernetes helm auto completion
if [ ! $(which helm >> /dev/null) ]; then
   # https://github.com/helm/helm/issues/5046
   source <(helm completion zsh | sed -E 's/\["(.+)"\]/\[\1\]/g')
fi

# The next line updates PATH for the Google Cloud SDK.
source $HOME/Applications/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
source $HOME/Applications/google-cloud-sdk/completion.zsh.inc

# enable the google cloud command cli auto completion for zsh
source <(kubectl completion zsh)
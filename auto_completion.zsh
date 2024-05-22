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

export FPATH=/opt/homebrew/share/zsh/site-functions:$FPATH
export fpath=(/usr/local/share/zsh-completions $fpath)

if type brew &>/dev/null; then
   FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

   autoload -Uz compinit
   compinit
fi
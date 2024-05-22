# reference: https://github.com/zsh-users/antigen/wiki/In-the-wild
#
# activate the antigen envs
# installed antigen by `brew install antigen`
# source /opt/homebrew/share/antigen/antigen.zsh
source $HOME/.local/resource/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Plugins
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle extract
antigen bundle command-not-found
antigen bundle Tarrasch/zsh-autoenv
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Highlight
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
# You probably will want to install powerline fonts https://github.com/powerline/fonts
antigen theme bhilburn/powerlevel9k powerlevel9k

# Kubetail
# antigen bundle johanhaleby/kubetail

# poetry
# antigen bundle poetry

# Tell antigen that you're done.
antigen apply

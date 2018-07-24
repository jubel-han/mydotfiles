# reference: https://github.com/zsh-users/antigen/wiki/In-the-wild
#
# activate the antigen envs
# installed antigen by `brew install antigen`
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Plugins
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle extract
antigen bundle command-not-found
antigen bundle kennethreitz/autoenv
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle akoenig/npm-run.plugin.zsh

# Highlight
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
# You probably will want to install powerline fonts https://github.com/powerline/fonts
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell antigen that you're done.
antigen apply

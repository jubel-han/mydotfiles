# using conda only for switching python versions
# To install the miniconda3:
# https://conda.io/miniconda.html
#
# To enable the base env of Conda:
#   source conda-activate base
# Create the python 3.7 environment
#  conda create -n python3.7 python=3.7
#
# To enable the python3.7 env
#   source conda-activate python3.7
# to disable the Conda ENV:
#   source conda-deactivate <env-name>

ln -sf $HOME/miniconda3/bin/deactivate /usr/local/bin/conda-deactivate
ln -sf $HOME/miniconda3/bin/activate /usr/local/bin/conda-activate

# Python Virtualenv alias
alias venv="virtualenv -p $(which python3) venv && source venv/bin/activate"
alias venv2="virtualenv -p $(which python2) venv && source venv/bin/activate"

# alias envsubst='/usr/local/opt/gettext/bin/envsubst'
alias updatedb='sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist'
alias pes='pipenv shell'
alias auto_comp_kubelet='source <(kubectl completion zsh)'
alias kuberun='kubectl run --rm -it $(date +%s) --image'

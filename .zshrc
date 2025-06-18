# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git pyenv)

# Homebrew autocompletion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

source $ZSH/oh-my-zsh.sh

# Pyenv config
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# Add juliaup to PATH
export PATH="$HOME/.juliaup/bin:$PATH"

# Alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Alias for activating Python virtual environments
function venv(){
    if [ -d "./.venv" ]; then
        source .venv/bin/activate
    else
        echo "No virtual environment found in $PWD/.venv/"
    fi
}

# Alias for opening R console
alias R='R --no-save'

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Update dynamic linker path
export DYLD_LIBRARY_PATH=/usr/local/lib:$DYLD_LIBRARY_PATH

# Autocompletion for uv
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

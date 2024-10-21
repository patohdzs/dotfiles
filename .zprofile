# Start up Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Start up pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

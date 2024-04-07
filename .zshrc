# Local changes: 
alias python=python3

bindkey "[C" emacs-forward-word   #control left
bindkey "[D" backward-word        #control right

export PATH=$PATH:/Users/antonshablyko/Library/Python/3.8/bin

eval "$(zoxide init zsh)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

alias ll="exa -l -g --icons --git"
alias lla="exa -la -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"

# POMODORO https://gist.github.com/bashbunni/f6b04fc4703903a71ce9f70c58345106
# Mac setup for pomo
alias work="timer 45m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias work_30="timer 30m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"
        
alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

#llvm
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# Tmuxifyer https://github.com/jimeh/tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

export EDITOR='nvim'
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(starship init zsh)"

# Aliases and Global Variables
alias ls="ls --color=auto"
set --export EDITOR nvim
set --export TERMINAL alacritty

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

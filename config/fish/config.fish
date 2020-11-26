# Aliases and Global Variables
alias ls="ls --color=auto"
set --export EDITOR nvim
set --export TERMINAL alacritty

# Functions
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function vimdiff
    nvim -d $argv
end

# Run on startup
if status is-login
    nvm use default

    # If $DISLAY == 0 && $XDG_VTNR == 1
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

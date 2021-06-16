# Aliases and Global Variables
alias ls="ls --color=auto"
set --export VISUAL "nvr --remote-wait"
set --export EDITOR "nvr --remote-wait"
set --export TERMINAL alacritty

if test -d $HOME/bin
    set PATH $HOME/bin $PATH
end

# Functions
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function vimdiff
    nvim -d $argv
end

function check-local
    for x in */
        cd $x
        echo "Checking repo $x:"
        git status
        echo \n
        cd ..
    end
end

# Run on startup
if status is-login
    nvm use default

    # If $DISLAY == 0 && $XDG_VTNR == 1
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

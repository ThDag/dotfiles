if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q eza
    alias ll "eza -l -b --git -h --no-permissions --icons"
    alias lla "ll -a"
end

alias cd z

set -x LANG en_US.UTF-8

zoxide init fish | source
fish_vi_key_bindings

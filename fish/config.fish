if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q eza
    alias ll "eza -l -b --git -h --no-permissions --icons --group-directories-first"
    alias lla "ll -a"
    alias llt "eza -l -b --git -h --no-permissions --icons --tree"
    alias llta "ll -a --tree"
end

alias cd z

set -x LANG en_US.UTF-8
set -gx COLORTERM truecolor
set -gx TERM xterm-256color

zoxide init fish | source

fish_vi_key_bindings

set -x FZF_DEFAULT_OPTS "--layout=reverse"
# fzf-fish layout

eval (direnv hook fish)

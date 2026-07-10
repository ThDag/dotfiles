if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    fortune -n 300 -s | cowsay
end

if type -q eza
    alias ll "eza -l -b --git -h --no-permissions --icons --group-directories-first --total-size"
    alias lla "ll -a --total-size"
    alias llt "eza -l -b --git -h --no-permissions --icons --tree"
    alias llta "ll -a --tree"
end

alias cd z

set -x LANG en_US.UTF-8
set -gx COLORTERM truecolor
set -gx TERM xterm-256color

zoxide init fish | source

fish_vi_key_bindings

set -x EDITOR /opt/homebrew/bin/nvim
set -x VISUAL /opt/homebrew/bin/nvim
set -x FZF_DEFAULT_OPTS "--preview 'bat --style=numbers --color=always --line-range :500 {}'"
# fzf-fish layout

# # yazi
# # this makes yazi move to the directory that you quit yazi at.
# function y
#     set tmp (mktemp -t "yazi-cwd.XXXXXX")
#     command yazi $argv --cwd-file="$tmp"
#     if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
#         builtin cd -- "$cwd"
#     end
#     command rm -f -- "$tmp"
# end

function y
    yaz:
end

function tarage
    set item $argv[1]
    if test -d $item
        set tarfile "$item.tar.gz"
        tar -czf $tarfile $item
        set target $tarfile
    else
        set target $item
    end

    set archive "$target.age"
    age -p -o $archive $target
    rm $target
    echo "Encrypted to $archive"
end

function ungage
    set archive $argv[1]
    # remove .age suffix for decrypted output
    set outfile (string replace -r '\.age$' '' $archive)

    # decrypt
    age -d -o $outfile $archive

    # if it's a tar.gz, extract it
    if string match -r '\.tar\.gz$' $outfile
        tar -xzf $outfile
        rm $outfile # remove tar after extracting
    end

    echo "Decrypted (and extracted if tar) from $archive"
end

eval (direnv hook fish)

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/thd/.lmstudio/bin
# End of LM Studio CLI section

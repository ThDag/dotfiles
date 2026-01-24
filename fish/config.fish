if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    fortune -n 300 -s | cowsay
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

set -x EDITOR /opt/homebrew/bin/nvim
set -x VISUAL /opt/homebrew/bin/nvim
set -x FZF_DEFAULT_OPTS "--layout=reverse"
# fzf-fish layout

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

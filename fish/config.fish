if status is-interactive
    # Commands to run in interactive sessions can go here
    and not set -q TMUX
    set -gx PATH /opt/homebrew/bin $PATH
    exec tmux
end

set -U fish_greeting "
   ███████████   █████████   █████   █████   █████████  
  ░█░░░███░░░█  ███░░░░░███ ░░███   ░░███   ███░░░░░███ 
  ░   ░███  ░  ░███    ░███  ░███    ░███  ░███    ░███ 
      ░███     ░███████████  ░███████████  ░███████████ 
      ░███     ░███░░░░░███  ░███░░░░░███  ░███░░░░░███ 
      ░███     ░███    ░███  ░███    ░███  ░███    ░███ 
      █████    █████   █████ █████   █████ █████   █████
     ░░░░░    ░░░░░   ░░░░░ ░░░░░   ░░░░░ ░░░░░   ░░░░░ 
"

# "
# ▄▄▄▄▄ ▄▄▄·  ▄ .▄ ▄▄▄· 
# •██  ▐█ ▀█ ██▪▐█▐█ ▀█ 
#  ▐█.▪▄█▀▀█ ██▀▐█▄█▀▀█ 
#  ▐█▌·▐█ ▪▐▌██▌▐▀▐█ ▪▐▌
#  ▀▀▀  ▀  ▀ ▀▀▀ · ▀  ▀ 
# "

alias tree='eza -T --icons -F'
alias ls='eza --long --git --icons --no-user --header -F'
alias lsg='eza --long --git --git-repos --icons --no-user --header -F'
alias lsag='eza --long --git --icons --no-user --header -F -a'
alias lsa='eza --long --git --git-repos --icons --no-user --header -F -a'
alias ll='eza --icons -F'
alias lla='eza --icons -F -a'


set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname alwaysif status is-interactive

eval "$(/opt/homebrew/bin/brew shellenv)"


# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0

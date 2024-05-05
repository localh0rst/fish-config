# Disable Greeting
set -gx fish_greeting ''
# Nerd Fonts
set -g theme_nerd_fonts yes

for file in ~/.config/fish/completions/*.fish
    source $file
end

#if status is-interactive
#    if not set -q TMUX
#        exec tmux new-session -A -c $HOME -s BASIC
#    end
#end

source ~/.config/fish/aliases.fish
source ~/.config/fish/env.fish
source ~/.config/fish/path.fish

# Install fisher (curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
# Fuzzy finder
# fisher install PatrickF1/fzf.fish
#   CTRL-ALT-F search Files
#   CTRL-ALT-L search Gitlog
#   CTRL-ALT-S search Git status
#   CTRL-R search history
#   CTRL-ALT-P search process
#   CTRL-V search variables
#
# fisher install jorgebucaran/fish-ssh-agent

# Install starship (https://starship.rs/)
# curl -sS https://starship.rs/install.sh | sh
starship init fish | source

fish_default_key_bindings
#bind \cA beginning-of-line

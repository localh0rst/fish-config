# Disable Greeting
set -gx fish_greeting ''
# Nerd Fonts
set -g theme_nerd_fonts yes

for file in ~/.config/fish/completions/*.fish
    source $file
end


if status is-interactive
    # Set up perlbrew (remember to run perlbrew init, perlbrew install-cpanm, perlbrew install perl-5.38.2, perlbrew switch perl-5.38.2)
    # source perlbrew.fish if it exists
    test -e ~/perl5/perlbrew/etc/perlbrew.fish; and source ~/perl5/perlbrew/etc/perlbrew.fish

    # Setup aliases, env vars, and path
    source ~/.config/fish/aliases.fish
    source ~/.config/fish/env.fish
    source ~/.config/fish/path.fish

    starship init fish | source

    # UIse default key bindings
    fish_default_key_bindings

#    if not set -q TMUX
#        exec tmux new-session -A -c $HOME -s BASIC
#    end
end




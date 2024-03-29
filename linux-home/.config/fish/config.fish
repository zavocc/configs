if status is-interactive
    # Commands to run in interactive sessions can go here
    ##############################
    # Aliases
    ##############################
    # use -a in cp by default to allow recursive copying
    alias cp='cp -a'

    # rm aliases
    alias rm='rm -i'
    alias rf='rm -rf'
    alias rd='rm -r'

    # use bat instead of cat
    if command -q bat
        alias cat='bat'
    else if command -q batcat
        alias cat='batcat'
    end

    # alias vi to neovim when available
    command -q nvim && alias vi='nvim'

    # initialize starship prompt
    [ -f ~/.config/starship.toml ] && command -q starship &>/dev/null && eval "$(starship init fish)"
end

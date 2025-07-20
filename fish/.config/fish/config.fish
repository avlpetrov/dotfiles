if status is-interactive
    # Set up `starship` prompt
    starship init fish | source
    enable_transience

    # Commands to run in interactive sessions can go here
    if string match -q -- '*ghostty*' $TERM
        set -g fish_vi_force_cursor 1
    end

    # Set up `fzf` key bindings (https://github.com/junegunn/fzf):
    fzf --fish | source

    # Set up `zoxide` integration with `fish` (hhttps://github.com/ajeetdsouza/zoxide)
    zoxide init fish | source

    # Enable VI-bindings
    fish_vi_key_bindings
    # Set cursor shapes for VI-modes
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_replace_one underscore
    set fish_cursor_replace underscore
    set fish_cursor_external line
    set fish_cursor_visual block
end

set -Ux XDG_CONFIG_HOME "$HOME/.config"

# Set NeoVim as the default editor
set -gx EDITOR nvim

# Local K8s with lima
set -gx KUBECONFIG $(limactl list k8s --format 'unix://{{.Dir}}/copied-from-guest/kubeconfig.yaml')

# Aliases
alias vim="nvim"
alias v="nvim"

alias python="python3"

alias lg="lazygit"

alias gs="git status"
alias gco="git checkout"
alias gc="git commit"
alias ga="git add"
alias gb="git branch"
alias gd="git diff"

alias ls="lsd"
alias l="ls -l"
alias la="ls -la"
alias lt="ls --tree"
alias lta="ls -la --tree"

# K8s aliases
alias k='kubectl'
alias kg='kubectl get'
alias kgpo='kubectl get pod'

# Set up shell completions for `uv`
uv generate-shell-completion fish | source

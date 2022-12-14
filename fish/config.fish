set PATH $HOME/.cargo/bin $PATH
set PATH /usr/local/Cellar/llvm/15.0.2/bin $PATH
set ZELLIJ_CONFIG_DIR $HOME/.config/zellij

# Define alias in shell
alias vim "nvim"
alias vi "nvim"
alias ls "exa --long"
alias zellij "zellij -l compact"

# Set default editor
set EDITOR "nvim"
set VISUAL "nvim"

# THEME

# Nightfox Color Palette
# Style: nightfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/nightfox/nightfox_fish.fish
set -l foreground cdcecf
set -l selection 2b3b51
set -l comment 738091
set -l red c94f6d
set -l orange f4a261
set -l yellow dbc074
set -l green 81b29a
set -l purple 9d79d6
set -l cyan 63cdcf
set -l pink d67ad2

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (zellij setup --generate-auto-start fish | string collect)
    eval (starship init fish | source)
end

# pnpm
set -gx PNPM_HOME "/Users/mac/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
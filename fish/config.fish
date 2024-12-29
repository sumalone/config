if status is-interactive
    starship init fish | source
    zoxide init fish | source
    atuin init fish --disable-up-arrow | source
end

fish_add_path ~/.cargo/bin
fish_add_path ~/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path ~/go/bin

set -gx EDITOR nvim
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
set -gx fish_greeting # disable greeting

set -gx PATH /run/user/1000/fnm_multishells/9375_1728344072754/bin $PATH
set -gx FNM_MULTISHELL_PATH /run/user/1000/fnm_multishells/9375_1728344072754
set -gx FNM_VERSION_FILE_STRATEGY local
set -gx FNM_DIR "/home/cama/.local/share/fnm"
set -gx FNM_LOGLEVEL info
set -gx FNM_NODE_DIST_MIRROR "https://nodejs.org/dist"
set -gx FNM_COREPACK_ENABLED false
set -gx FNM_RESOLVE_ENGINES false
set -gx FNM_ARCH x64

if status is-login
    keychain --clear --quiet
end

if test -f ~/.keychain/(hostname)-fish
    source ~/.keychain/(hostname)-fish
end

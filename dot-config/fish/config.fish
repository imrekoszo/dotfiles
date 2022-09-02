# homebrew, generated with `brew shellenv` from fish
set -gx HOMEBREW_PREFIX "/opt/homebrew";
set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/opt/homebrew";
set -q PATH; or set PATH ''; set -gx PATH "/opt/homebrew/bin" "/opt/homebrew/sbin" $PATH;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/opt/homebrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH;

# additional paths
set -gxp PATH ~/shared-bin
set -gxp PATH ~/bin

# sdkman, adopted from the official bash, needs bass plugin
set -gx SDKMAN_DIR ~/.sdkman
if test -e "$SDKMAN_DIR/bin/sdkman-init.sh"
  replay source "$SDKMAN_DIR/bin/sdkman-init.sh"
end

# whatever this means
set -gx LC_ALL en_US.UTF-8

##########################################
# Interactive mode configurations follow #
##########################################
status is-interactive || exit

# suppress the default login message
set -g fish_greeting

# configure tide prompt
set -g tide_character_icon ';'
set -g tide_character_color brblue
set -g tide_left_prompt_items pwd git newline character
set -g tide_pwd_icon ''
set -g tide_pwd_icon_home ''
set -g tide_left_prompt_prefix '#'
set -g tide_prompt_add_newline_before false

# Z config
set -g Z_CMD j

# editors
if type -q micro
  set -gx EDITOR micro
end
if type -q subl
  set -gx VISUAL subl
end

# pagers
set -gx BAT_THEME OneHalfLight
set -gx LESS '-iR'

# iterm2
if set -q ITERM_SESSION_ID && test -e ~/.iterm2_shell_integration.fish
  source ~/.iterm2_shell_integration.fish
end

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

# whatever this means
set -gx LC_ALL en_US.UTF-8

##########################################
# Interactive mode configurations follow #
##########################################
status is-interactive || exit

# suppress the default login message
set -gx fish_greeting

# tide prompt
set -gx tide_character_icon ';'
set -gx tide_character_color blue
set -gx tide_git_color_branch green
set -gx tide_git_color_upstream green
set -gx tide_left_prompt_items pwd git newline character
set -gx tide_pwd_icon ''
set -gx tide_pwd_icon_home ''
set -gx tide_left_prompt_prefix '# 🐟'
set -gx tide_prompt_add_newline_before false

# pagers
set -gx BAT_THEME OneHalfLight
set -gx LESS '-iR'

# Z config
set -gx Z_CMD j

# editors
if type -q micro
  set -gx EDITOR micro
  abbr -a e micro
end
if type -q subl
  set -gx VISUAL 'subl -w'
  abbr -a e subl
end

# abbreviation management
abbr a "abbr | grep -i"

# brew
abbr buu 'brew update && brew upgrade'

# git
## functions: ggone, gprune
abbr glol git lg
abbr tiga tig --all
abbr grbom 'git rebase origin/(__git.default_branch)'
abbr grbum 'git rebase upstream/(__git.default_branch)'
## custom gitconfig: short-peek
abbr gs git short-peek
abbr gmu "gmu_ && git short-peek"
abbr gmp "gmu_ && gprune && git short-peek"
abbr gsb git status -sb

# grep
abbr ig grep -i

# iterm2 integration
# must come _after_ tide prompt config! https://github.com/IlanCosman/tide/issues/307
# for now let's keep it at the very end 
if set -q ITERM_SESSION_ID && test -e ~/.iterm2_shell_integration.fish
  source ~/.iterm2_shell_integration.fish
end

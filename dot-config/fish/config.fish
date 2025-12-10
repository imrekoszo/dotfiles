# homebrew, generated with `brew shellenv` from fish
set -gx HOMEBREW_PREFIX /opt/homebrew
set -gx HOMEBREW_CELLAR /opt/homebrew/Cellar
set -gx HOMEBREW_REPOSITORY /opt/homebrew
set -q PATH; or set PATH ''
set -gx PATH $HOMEBREW_PREFIX/bin $HOMEBREW_PREFIX/sbin $PATH
set -q MANPATH; or set MANPATH ''
set -gx MANPATH $HOMEBREW_PREFIX/share/man $MANPATH
set -q INFOPATH; or set INFOPATH ''
set -gx INFOPATH $HOMEBREW_PREFIX/share/info $INFOPATH

# additional paths
set -gxp PATH ~/shared-bin
set -gxp PATH ~/bin
set -gxp PATH ~/.local/bin

# whatever this means
set -gx LC_ALL en_US.UTF-8

# tool paths
set -gx KALEIDOSCOPE_DIR ~/imre/oss/Kaleidoscope

##########################################
# Interactive mode configurations follow #
##########################################
status is-interactive || exit

##
## Look and feel
##

# suppress the default login message
set -gx fish_greeting

# prompt

# tide
set -gx tide_character_icon ';'
set -gx tide_character_color blue
set -gx tide_git_color_branch green
set -gx tide_git_color_upstream yellow
set -gx tide_git_color_stash green
set -gx tide_left_prompt_items pwd git newline character
set -gx tide_pwd_icon ''
set -gx tide_pwd_icon_home ''
set -gx tide_left_prompt_prefix '# 🐟'
set -gx tide_prompt_add_newline_before false

# starship - no worky with iterm2 integration right now https://github.com/starship/starship/discussions/3818
# trying with ghostty
starship init fish | source

# iterm2 integration
# must come _after_ prompt config! https://github.com/IlanCosman/tide/issues/307
if set -q ITERM_SESSION_ID && test -e ~/.iterm2_shell_integration.fish
    source ~/.iterm2_shell_integration.fish
end

##
## Tools
##

# fzf.fish
set fzf_diff_highlighter delta --paging=never --width=20

# bb-fzf
bind ctrl-alt-b bbf

# pagers
set -gx BAT_THEME OneHalfLight
set -gx LESS -iR

# Z config
zoxide init --cmd j fish | source

# editors
if type -q micro
    set -gx EDITOR micro
    abbr -a e micro
end
if type -q subl
    set -gx VISUAL 'subl -w'
    abbr -a e subl
end


##
## Abbreviations
##
abbr a 'abbr | grep -i'

# brew
abbr buu 'brew update && brew upgrade'

# git
## functions: ggone, gprune
abbr glol git lg
abbr tiga tig --all
abbr grbom 'git rebase origin/(__git.default_branch)'
abbr grbum 'git rebase upstream/(__git.default_branch)'
abbr gmum 'git merge upstream/(__git.default_branch)'
## custom gitconfig: short-peek
abbr gs git short-peek
abbr gmu 'gmu_ && git short-peek'
abbr gmp 'gmu_ && gprune ; git short-peek'
abbr gsb git status -sb
abbr gsta git stash push
abbr gclu git clone -o upstream
abbr gswd git switch --detach


# grep
abbr ig grep -i

# Intellij
abbr imp idea-merge-patcher
abbr gmt 'idea-merge-patcher >/dev/null 2>&1; git mergetool --no-prompt'

# clojure + custom certs for dep resolution under osx
# seems to be causing ssl errors when pulling deps from public repos
# set -gx CLJ_JVM_OPTS -Djavax.net.ssl.trustStoreType=KeychainStore

# try - https://github.com/tobi/try
eval (try init ~/imre/sandbox/tries | string collect)


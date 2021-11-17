# based on 3den, obraun, bira

local return_code=" %(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}## %n@%m ➜%{$reset_color%}'
    local user_symbol='%{${fg_bold[red]}%}#%{${reset_color}%}'
else
    local user_host='%{${fg_bold[blue]}%}#$%{${reset_color}%}'
    local user_symbol='%{${fg_bold[blue]}%};%{${reset_color}%}'
fi

local current_dir=' %{$terminfo[bold]$fg[blue]%}%~ %{$reset_color%}'
local git_branch='$(git_prompt_info)'

PROMPT="${user_host}${current_dir}${git_branch}%B${return_code}%b
%B${user_symbol}%b "

# red / yellow ?
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

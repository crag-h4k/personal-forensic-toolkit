if [ "$USER" = "root" ]; then CARETCOLOR="magenta"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg_bold[red]%}:( %?%{$reset_color%})"

PROMPT='
%{$fg_bold[cyan]%}%n%{$reset_color%}%{$fg[yellow]%}@%{$reset_color%}%{$fg_bold[blue]%}%m%{$reset_color%}:%{${fg_bold[green]}%}%~%{$reset_color%}$(git_prompt_info)
%{${fg[$CARETCOLOR]}%}⚡%{${reset_color}%}'

RPS1='${return_code} %D - %*'
#⚡ 
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}^%{$reset_color%}%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ⚒%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[red]%} ♥"

#PROMPT='%{$fg[white]%}
# 
#%{$reset_color%} %{$fg[cyan]%}%3~%{$reset_color%} $(git_prompt_info)%{$reset_color%}
#%{$fg[red]%}➜%{$reset_color%} '
#
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ⚒%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔%{$reset_color%}"
#
#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}(%{$fg[white]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[red]%})%{$reset_color%}"
#
# More symbols to choose from:
# ☀ ✹ ☄ ♆ ♀ ♁ ♐ ♇ ♈ ♉ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ⚢ ⚲ ⚳ ⚴ ⚥ ⚤ ⚦ ⚒ ⚑ ⚐ ♺ ♻
# ♼ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷ ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐ ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⨷ ⩚
# ⩛ ⩡ ⩱ ⩲ ⩵  ⩶ ⨠ ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟  ⬤ 〒 ǀ ǁ ǂ ĭ Ť Ŧ ☭

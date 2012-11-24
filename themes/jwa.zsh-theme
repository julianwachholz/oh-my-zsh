#
# my ZSH theme
#

# set colors
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE BLACK; do
	eval C_"${color}"="%{$fg[${(L)color}]%}"
	eval CB_"${color}"="%{${terminfo[bold]}$fg[${(L)color}]%}"
done
C_RESET="%{${terminfo[sgr0]}%}"

if [ $UID -eq 0 ]
	then C_USER=$C_RED
	else C_USER=$C_BLUE
fi

local return_code="%(?..${C_RED}%? ↵${C_RESET})"

PROMPT='${C_BLUE}%~ ${C_RESET}$(git_prompt_info)${C_USER}%(!.#.»)${C_RESET} '
PROMPT2='${C_BLUE}↳ ${C_RESET}'
RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="${C_CYAN}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${C_RESET} "
ZSH_THEME_GIT_PROMPT_DIRTY="${CB_RED}★"
ZSH_THEME_GIT_PROMPT_CLEAN=""

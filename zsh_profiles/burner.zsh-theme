# Totally ripped off Dallas theme

function mypath {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function getDateFormatted {
    python ~/repos/scripts/util/dateFormatted.py
}

NEWLINE=$'\n'

# Grab the current username 
JUNKFOOD_CURRENT_USER_="%{$FG[025]%}[%{$FG[075]%}%n%{$reset_color%}"
# Grab the current machine name 
JUNKFOOD_MACHINE_="%{$fg_bold[blue]%}%m%{$fg[white]%}%{$FG[025]%}]%{$reset_color%} "

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
JUNKFOOD_LOCA_="%{$fg[cyan]%}\$(mypath)%{$reset_color%} \$(git_prompt_info)\${NEWLINE}%{$FG[075]%}>%{$reset_color%} "

# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[075]%}(%{$fg_bold[magenta]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[075]%}) ✔"

# Add 3 cyan ✗s if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[075]%}) ✗"

# Put it all together!
PROMPT="$JUNKFOOD_CURRENT_USER_%{$FG[025]%}@$JUNKFOOD_MACHINE_$JUNKFOOD_LOCA_"
RPROMPT="%(?..%{$FG[105]%}Error: %?%{$reset_color%})"

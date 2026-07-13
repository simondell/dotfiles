# PROMPTS
# %#%F{yellow}%n%F{cyan}@%m %F{default}
setopt PROMPT_SUBST

git_branch_block() {
	local branch color

	command git rev-parse --is-inside-work-tree >/dev/null 2>&1 || {
		return
	}

	branch=$(command git symbolic-ref --quiet --short HEAD 2>/dev/null \
		|| command git rev-parse --short HEAD 2>/dev/null) || return

	if [[ -n $(command git status --porcelain 2>/dev/null) ]]; then
		color='red'
	else
		color='green'
	fi

	print -n " | %F{${color}}${branch}%F{default}"
}

export PROMPT='
%!| %F{yello}%~%F{default}$(git_branch_block) | %* %D%E
🌈 '
#export RPROMPT="%D %*" # yy-mm-dd 24:mm:ss

# does what it says
alias cleardns="sudo killall -HUP mDNSResponder"    # clears the DNS cache

# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# neater cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# better file listing
alias lls='ls -GFbhl'	# my full-on color, type makers/, C-encoding non-printables, units, long format
alias ls="ls -CGF"		# pretty, shortform

# Canonical PATH line. Removed 2026-10-17, with provenance:
#   "./bin"      — a relative PATH entry: resolves against the CWD, so any
#                  project directory containing a bin/ subdirectory (e.g. a
#                  dune build file named 'dune') hijacks its filenames as
#                  commands. The zombie removed.
#   $HOME/.bin   — machine-local script homes, retired. Local scripts either
#   $HOME/bin      migrate to $DOTFILES_ROOT/bin (versioned via dotfiles), or
#                  users consciously add entries via ~/.localrc.
#   $ZSH/bin     — $ZSH resolved only under an assumed install location;
#                  $DOTFILES_ROOT/bin is the refactored spelling.
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:$DOTFILES_ROOT/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# Rebuild opam env on every shell instead of sourcing opam's generated,
# guard-bearing init files: those short-circuit when opam's variables are
# already exported (e.g. nested shells, multiplexer panes, opencode serve),
# which silently drops the switch's bin dir from the rebuilt PATH.
command -v opam >/dev/null 2>&1 && eval "$(opam env 2>/dev/null)"
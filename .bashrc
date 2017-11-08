export HISTFILE=$HOME/.cache/.bash_history

RCFILE=$0
if [[ "bash" == "$RCFILE" ]]; then
  RCFILE="$(readlink -f "$HOME/.bashrc")"
fi
RCDIR="$(cd "$(dirname "$RCFILE")" && pwd)"
. "$RCDIR/shell/aliases.sh"

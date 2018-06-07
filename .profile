#!/usr/bin/env sh

# add ~/bin to $PATH if it exists and is not included yet
if [ -d "$HOME/bin" ] && ! (echo "$PATH" | grep -qE "$HOME/bin(:|$)"); then
  export PATH="$HOME/bin:$PATH"
fi

if [ -n "$DISPLAY" ]; then
  export BROWSER=google-chrome-stable
else
  export BROWSER=elinks
fi

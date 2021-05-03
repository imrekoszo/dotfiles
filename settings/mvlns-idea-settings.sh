#!/usr/bin/env bash

set -e

DOTFILES="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

mvlns colors/Alabaster.icls "$DOTFILES"/intellij-alabaster/Alabaster.icls

for filepath in templates/Clojure.xml \
                keymaps/Mnemonicised.xml \
                options/repl-commands.xml \
                options/watcherDefaultTasks.xml \
                options/macros.xml
do
  mvlns "$filepath" "$DOTFILES"/IdeaIC-current/"$filepath"
done

#!/usr/bin/env bash

# shellcheck source=.profile
. ~/.profile

# shellcheck source=.bashrc
case $- in *i*) . ~/.bashrc;; esac

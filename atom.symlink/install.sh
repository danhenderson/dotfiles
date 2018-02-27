#!/bin/sh
#
# Atom
#
# This installs packages and themes for Atom using apm

# Check for Homebrew
if test ! $(which apm)
then
  echo "  Installing Atom packages and themes for you."

  exec apm install css-color-underline
  exec apm install linter-jshint
fi

exit 0

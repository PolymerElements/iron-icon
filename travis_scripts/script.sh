#!/usr/bin/env sh

# Exit if any statement fails (-e).
set -e

echo "Running local tests..."
xvfb-run polymer test

if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
  echo "Running Sauce Labs tests..."
  polymer test -s 'default'
fi

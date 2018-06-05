#!/usr/bin/env sh

echo "Checking types..."
npm run update-types
git diff --exit-code
if [ $? -ne 0 ]; then
  echo -e '\n\033[31mERROR:\033[0m Typings are stale. Please run "npm run update-types".'
  exit 1
fi

echo "Checking format..."
npm run format
git diff --exit-code
if [ $? -ne 0 ]; then
  echo -e '\n\033[31mERROR:\033[0mProject is not formatted. Please run "npm run format".'
  exit 1
fi

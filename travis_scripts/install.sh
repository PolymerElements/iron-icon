#!/usr/bin/env sh

# Exit if any statement fails (-e); echo all executed statements (-v).
set -ev

npm install
npm install -g polymer-cli
polymer install --variants

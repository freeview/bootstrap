#!/bin/bash

BASE_URL_REPO="https://raw.githubusercontent.com/freeview/bootstrap"
BOOTSTRAP_SCRIPT_MAIN="$BASE_URL_REPO/master/main.sh"

curl "$BOOTSTRAP_SCRIPT_MAIN" -o "$HOME/main.sh"

# Control toggle main.sh
# sh "$HOME/main.sh"

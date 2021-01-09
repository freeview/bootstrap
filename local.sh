#!/bin/bash

BASE_URL_REPO="https://raw.githubusercontent.com/freeview"
BOOTSTRAP_SCRIPT_MAIN="$BASE_URL_REPO/bootstrap/master/main.sh"

curl "$BOOTSTRAP_SCRIPT_MAIN" -o "$HOME/main.sh"

# Control toggle main.sh
# sh "$HOME/main.sh"

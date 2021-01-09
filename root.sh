#!/bin/bash

BASE_URL_REPO="https://raw.githubusercontent.com/freeview/bootstrap"
BRANCH="master"
BOOTSTRAP_SCRIPT_LOCAL="$BASE_URL_REPO/$BRANCH/local.sh" 

curl "$BOOTSTRAP_SCRIPT_LOCAL" -o "$HOME/local.sh"

# DO NOT COMMENT THIS OUT, CONTROL YOUR EXECUTION IN local.sh instead
sh "$HOME/local.sh"

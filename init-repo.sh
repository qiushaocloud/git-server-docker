#!/bin/sh

REPO_NAME=$1

# Add .git extension if REPO_NAME doesn't end with .git
if [[ $REPO_NAME != *.git ]]; then
    echo "REPO_NAME add .git, OLD_REPO_NAME: $REPO_NAME"
    REPO_NAME="$REPO_NAME.git"
fi

echo "REPO_NAME: $REPO_NAME"

git init --bare $REPO_NAME
chown -R git:git $REPO_NAME
#!/bin/bash

# file: scheduled-git-auto-push.sh
#
# make executable: chmod +x scheduled-git-auto-push.sh
#

REPO_PATH="/Users/timbo/code/dotfiles"
BRANCH="master"
COMMIT_MSG="Latest local commits, automated sync from launchd"

cd "$REPO_PATH" || exit 1

# Check for changes
if [[ -n $(git status --porcelain) ]]; then
    git add .
    git commit -m "$COMMIT_MSG"
    git push origin "$BRANCH"
else
    echo "No changes to commit."
fi

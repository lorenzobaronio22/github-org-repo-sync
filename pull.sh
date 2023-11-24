#!/bin/bash
echo "Start pull: $(date)"

BASE_DIR=$(pwd)
REPO_DIR="$BASE_DIR/repos"

cd $REPO_DIR
for d in $(find . -type d -name .git); do
  cd "$d/.."
  git pull origin
  cd $REPO_DIR
done

echo "End pull: $(date)"

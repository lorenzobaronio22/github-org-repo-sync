#!/bin/bash

echo "Start clone: $(date)"

BASE_DIR=$(pwd)
REPO_DIR="$BASE_DIR/repos"

cd $REPO_DIR

# Clone all org repos (via https)
curl --silent -i -u "$USERNAME:$PASSWORD" "https://api.github.com/orgs/$ORG/repos?per_page=200" | grep -oP '(?<="clone_url": ").+?(?=")' | while read line; do
  echo $line
  # Replace `github.com` in the clone url with `token@github.com`
  git clone ${line/github/"$PASSWORD@github"}
done

echo "End clone: $(date)"

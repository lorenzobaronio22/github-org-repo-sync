# Automation of Mirror/Sync Github Organization Repos locally

Mirror/Sync Github Organization Repos locally original recources [link](https://gist.github.com/germanviscuso/a77abd8a2fc64de7f15de6e43dbd904b)

## Quick start

- create dest directory *repos/*: `mkdir repos`
- create *.env* file containing the followiong variables:
  - **USERNAME** - github username
  - **PASSWORD** - github password or access token
  - **ORG** - github organization name
- deploy the containers: `docker compose up -d`

### scripts details

## clone.sh

- fetch first 200 repos of the organization specified in $ORG environment variables
- authenticate to github using $USERNAME and $PASSWORD environment variables
- clone each repo into subfolder *repos/*

## pull.sh

- find all git repos root folders contained in subfolder *repos/*
- for each repo exec pull command

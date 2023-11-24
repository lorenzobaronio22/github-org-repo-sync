# Mirror/Sync Github Organization Repos locally

Recources [link](https://gist.github.com/germanviscuso/a77abd8a2fc64de7f15de6e43dbd904b)

## Quick start

- create dest directory *repos/*: `mkdir repos`
- create *.env* file containing the followiong variables:
  - **USERNAME** - github username
  - **PASSWORD** - github password or access token
  - **ORG** - github organization name
- deploy the containers: `docker compose up -d`

## clone.sh

- fetch first 200 repos of the organization
- user credentials from .env file
- clone each repo into root folder repos/
- can be schedule to clone new repos (NB: cloning of the already existing repos will just failed and move to the next)

## pull.sh

- find all git repos contained in the root folder /repos
- for each repo exec pull command

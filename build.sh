#!/usr/bin/env bash

set -e
set -o pipefail
set -v

initialGitHash=$(git rev-list --max-parents=0 HEAD)
# node ./studio-build.js $initialGitHash 
npx @stackbit/sanity-pull --ssg gatsby --sanity-project-id $SANITY_PROJECT_ID --sanity-access-token $SANITY_ACCESS_TOKEN
gatsby build

wait
echo "Build finished"

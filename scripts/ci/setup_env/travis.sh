#!/bin/bash
echo "=== OSS-HUB [Setup-Env: Travis-CI] ==="

if [ "$TRAVIS_PULL_REQUEST" != "false" ]
then
  echo "Travis: PR detected"
  export IS_PULL_REQUEST=true
else
  echo "Travis: Non-PR detected"
  export IS_PULL_REQUEST=false
fi

export CI_BRANCH="$TRAVIS_BRANCH"

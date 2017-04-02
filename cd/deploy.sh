#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    ls -all cd/
    mvn deploy -P sign,build-extras --settings cd/mvnsettings.xml
fi

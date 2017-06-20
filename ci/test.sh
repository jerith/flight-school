#!/bin/bash

set -e -x

pushd flight-school
bundle install
bundle exec rspec
popd

tar czf release/flight-school-0.1.0.tgz flight-school/
echo 'flight-school' > release/gh-name
echo '0.1.0' > release/gh-tag

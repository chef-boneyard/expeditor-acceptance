#!/bin/bash

set -evx
ls -al
pwd
ls -al ..
version="$(cat VERSION)"

sed -i -r "s/^(\\s*)VERSION = \".+\"/\\1VERSION = \"${version}\"/" lib/version.rb
sed -i -r "s/^(\\s*)build_version \".+\"/\\1build_version \"${version}\"/" omnibus-harmony/config/projects/harmony.rb
sed -i -r "s/^(\\s*)VERSION: \".+\"/\\1VERSION: \"${version}\"/" .expeditor/build.docker.yml

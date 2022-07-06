#!/usr/bin/env -S tea -E

_="
---
args: /bin/sh
---
"

deno test \
 --allow-net \
 --allow-read \
 --allow-env=SRCROOT,GITHUB_TOKEN,TMPDIR \
 --allow-run \
 --import-map=$SRCROOT/import-map.json \
 --allow-write="$TMPDIR",/tmp \
 tests/*.ts

# /tmp is required on GHA ¯\_(ツ)_/¯
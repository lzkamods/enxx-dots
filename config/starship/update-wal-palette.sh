#!/bin/bash

JSON=~/.cache/wal/colors.json
OUT=~/.config/starship/starship.toml

echo 'palette = "wal"' > $OUT
echo '[palettes.wal]' >> $OUT

jq -r '.special | to_entries[] | "\(.key) = \"\(.value)\""' $JSON >> $OUT
jq -r '.colors | to_entries[] | "\(.key) = \"\(.value)\""' $JSON >> $OUT

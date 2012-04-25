#!/bin/bash

rm -rf man
mkdir man

for file in markdown/*; do
  basename=$(basename $file)
  ronn --roff $file --pipe > man/${basename/.markdown/.3}
done

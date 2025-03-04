#!/bin/sh
echo "regenerate all patches with current version numbers"
if [ "$(basename "${PWD}")" = "scripts" ]; then
  cd ..
fi
packageNames=$(cd patches && ls *.patch | sed -E 's/\+[0-9.]+.patch$//' | tr '+' '/')
git rm patches/*.patch
npx patch-package ${packageNames}
git add patches/*.patch

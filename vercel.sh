#!/bin/bash

if [[ $VERCEL_GIT_COMMIT_REF == "main" ]] ; then
  echo "This is build for main branch"
  npm run build:main
else
  echo "This is build for drafts"
  npm run build:not-main
fi
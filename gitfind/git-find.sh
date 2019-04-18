#!/bin/bash

# Copyright 2018, Ian Diaz
#
# This file is part of utilities which is released under GNU GPL License.
# See file LICENSE or for full license details.

# Use this script to find all occurences of a string across all commits.
# This script is indiscrimate and will search all revisions.
# There is currently no feature for cintrolling the scope of the search.

SEARCH_STRING=$1
SEARCH_FILE=$2

function search_revision(){
  REVISION=$1

  echo "[INFO] checking out revision: $REVISION"
  git checkout $REVISION --quiet

  echo "[INFO] searching in revision..."
  grep -n -s "$SEARCH_STRING" `find . -name "$SEARCH_FILE"`

  echo "[INFO] done!"
}

REVISIONS=$(git rev-list --all)

echo "[INFO] searching across all revisions..."
for REVISION in $REVISIONS
do
  search_revision $REVISION
done

echo "[INFO] finished searching across all revisions!"


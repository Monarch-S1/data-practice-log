#!/usr/bin/env bash
# Scaffold a new SQL problem file from the template.
# Usage: ./scripts/new_problem.sh 04-window-functions "rank customers by revenue"
set -euo pipefail

FOLDER="${1:?usage: new_problem.sh <folder> <slug>}"
SLUG="${2:?usage: new_problem.sh <folder> <slug>}"

DIR="sql/${FOLDER}"
[ -d "$DIR" ] || { echo "No such folder: $DIR"; exit 1; }

N=$(find sql -name '[0-9]*.sql' | wc -l | tr -d ' ')
NUM=$(printf "%04d" $((N + 1)))
CLEAN=$(echo "$SLUG" | tr '[:upper:] ' '[:lower:]-')
FILE="${DIR}/${NUM}-${CLEAN}.sql"

sed "s/YYYY-MM-DD/$(date +%F)/; s/<title>/${SLUG}/" sql/_TEMPLATE.sql > "$FILE"
echo "Created $FILE"

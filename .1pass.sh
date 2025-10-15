#!/usr/bin/env bash

f="${OP_ENV_FILE:-.op-env}"
if [ "$1" = "unset" ]; then
 while IFS='=' read -r k v; do [ -z "$k" ] && continue; case "$k" in \#*|"") continue;; esac; unset "$k"; done < "$f"
else
 t=""; while IFS='=' read -r k v; do [ -z "$k" ] && continue; case "$k" in \#*|"") continue;; esac; t="${t}export ${k}={{ ${v} }}
"; done < "$f"; eval "$(echo "$t" | op inject)"
fi

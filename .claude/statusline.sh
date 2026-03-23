#!/bin/bash
input=$(cat)

# Extract fields
MODEL=$(echo "$input" | jq -r '.model.display_name // "unknown"')
CTX_PCT=$(echo "$input" | jq -r '.context_window.used_percentage // 0' | cut -d. -f1)
COST=$(echo "$input" | jq -r '.cost.total_cost_usd // 0')
DIR=$(echo "$input" | jq -r '.workspace.current_dir' | xargs basename)

# Git branch
BRANCH=""
if git rev-parse --git-dir > /dev/null 2>&1; then
  BRANCH=$(git branch --show-current 2>/dev/null)
fi

# ANSI colors
RST="\033[0m"
BOLD="\033[1m"
CYAN="\033[36m"
GREEN="\033[32m"
YELLOW="\033[33m"
RED="\033[31m"
MAGENTA="\033[35m"

# Context bar (10 blocks)
filled=$((CTX_PCT / 10))
empty=$((10 - filled))
BAR=""
for ((i=0; i<filled; i++)); do BAR+="█"; done
for ((i=0; i<empty; i++)); do BAR+="░"; done

if [ "$CTX_PCT" -ge 80 ]; then BAR_COLOR="$RED"
elif [ "$CTX_PCT" -ge 50 ]; then BAR_COLOR="$YELLOW"
else BAR_COLOR="$GREEN"
fi

# Format cost
COST_FMT=$(printf "%.3f" "$COST")

printf "${CYAN}${BOLD} %s${RST} │ 📁 %s │ 🌿 %s │ ${BAR_COLOR}%s %s%%%s │ 💰 \$%s\n" \
  "$MODEL" "$DIR" "${BRANCH:-none}" "$BAR" "$CTX_PCT" "$RST" "$COST_FMT"

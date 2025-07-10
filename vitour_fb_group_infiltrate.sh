#!/bin/bash
# Infiltrate and monitor Vitour Facebook group

FB_GROUP_URL="https://m.facebook.com/groups/vitour/"
SESSION_COOKIE="INSERT_FB_COOKIE_HERE"
USER_AGENT="Mozilla/5.0"

OUTPUT_DIR=~/vitour/intel/facebook_group
mkdir -p "$OUTPUT_DIR"

echo "[*] Scraping members and recent activity from Vitour group..."
curl -s -A "$USER_AGENT" -b "cookie: $SESSION_COOKIE" "$FB_GROUP_URL" > "$OUTPUT_DIR/group_dump.html"

echo "[*] Extracting visible names and links..."
grep -oP 'href="\/profile\.php\?id=\K[0-9]+' "$OUTPUT_DIR/group_dump.html" | sort -u > "$OUTPUT_DIR/member_ids.txt"

echo "[*] Scanned Facebook Group. Found $(wc -l < "$OUTPUT_DIR/member_ids.txt") user profiles."

#!/bin/bash
# Master control script: distributes payloads to all enabled platforms

PAYLOAD_FILE="$HOME/vitour/smear/dallasreed/master_payloads.txt"
LOGFILE="$HOME/vitour/logs/payload_blaster.log"
PLATFORMS=("reddit" "weibo" "facebook" "forums")

echo "[*] Starting Project Vitour Payload Blaster..."
mkdir -p "$(dirname "$LOGFILE")"

for PLATFORM in "${PLATFORMS[@]}"; do
  echo "[+] Dispatching to $PLATFORM..."
  bash "modules/blast_$PLATFORM.sh" "$PAYLOAD_FILE" >> "$LOGFILE" 2>&1
done

echo "[✓] Payloads sent. Log: $LOGFILE"

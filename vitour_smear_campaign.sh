#!/bin/bash
# Reputation demolition toolkit

TARGET="Dallas Reed Corp"
ALIAS="dallasreed"
SMEAR_DIR=~/vitour/smear/$ALIAS
PLATFORMS=("linkedin" "wechat" "weibo" "twitter")

mkdir -p $SMEAR_DIR

for PLATFORM in "${PLATFORMS[@]}"; do
  echo "[*] Deploying smearbot on $PLATFORM..."
  python3 /opt/ai/smearbot.py --platform "$PLATFORM" --target "$TARGET" --output "$SMEAR_DIR/$PLATFORM.json"
done

echo "[+] All AI-generated complaint/review payloads created under $SMEAR_DIR"

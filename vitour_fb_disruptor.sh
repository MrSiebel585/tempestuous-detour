#!/bin/bash
# Inject false narratives and turn group sentiment against target

TARGET_NAME="Dallas Reed"
GROUP_URL="https://m.facebook.com/groups/vitour/"
PAYLOADS_DIR=~/vitour/smear/dallasreed
POST_FILE="$PAYLOADS_DIR/fb_posts.txt"

echo "[*] Generating disruptive posts targeting $TARGET_NAME..."
python3 /opt/ai/fb_disinfo_generator.py --target "$TARGET_NAME" --output "$POST_FILE"

echo "[*] Output example Facebook posts in $POST_FILE"
echo "Deploy them via burner accounts using Buffer/Hootsuite/FbAutoPoster."

echo "[*] Posting implication payloads..."
cat "$POST_FILE" | while read -r POST; do
    echo "[+] Ready to post: $POST"
    # Post manually or use tool like Hootsuite / fb-bot
done

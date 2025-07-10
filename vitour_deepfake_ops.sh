#!/bin/bash
# Deepfake fabrication for blackmail ops

NAME="Dallas Reed"
VOICE_SAMPLE="/opt/vitour/assets/dallas_voice.wav"
IMAGE_SAMPLE="/opt/vitour/assets/dallas_face.jpg"
OUTPUT_DIR=~/vitour/payloads/dallasreed

mkdir -p $OUTPUT_DIR

echo "[*] Creating deepfake confession..."
python3 /opt/ai/deepfake_maker.py --image $IMAGE_SAMPLE --voice $VOICE_SAMPLE --output "$OUTPUT_DIR/dallas_confession.mp4"

echo "[*] Auto-generating media narratives..."
python3 /opt/ai/ai_slander_postgen.py --target "$NAME" --video "$OUTPUT_DIR/dallas_confession.mp4" --platforms linkedin wechat weibo

echo "[+] Deepfake payload ready in $OUTPUT_DIR"



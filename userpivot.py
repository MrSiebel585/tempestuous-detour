#!/usr/bin/env python3
import sys
import json

if "--username" in sys.argv:
    idx = sys.argv.index("--username")
    username = sys.argv[idx + 1]
else:
    print("Usage: userpivot.py --username <username> --output <output.json>")
    sys.exit(1)

output_file = "social_links.json"
if "--output" in sys.argv:
    idx = sys.argv.index("--output")
    output_file = sys.argv[idx + 1]

print(f"[userpivot] Simulating social account pivot for: {username}")
fake_accounts = {
    "instagram": f"https://instagram.com/{username}",
    "twitter": f"https://twitter.com/{username}",
    "linkedin": f"https://linkedin.com/in/{username}",
    "facebook": f"https://facebook.com/{username}"
}

with open(output_file, "w") as f:
    json.dump(fake_accounts, f, indent=2)
print(f"[userpivot] Results written to {output_file}")

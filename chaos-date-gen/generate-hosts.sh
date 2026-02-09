#!/bin/bash
# generate-hosts.sh
# Run this after adding/removing PNGs in the hosts/ folder.
# It creates hosts.json from the filenames (without extension).
#
# Usage: ./generate-hosts.sh
#
# Example: hosts/Valentina.png, hosts/Blaze.png
#       → hosts.json: ["Valentina", "Blaze"]

cd "$(dirname "$0")"

echo "[" > hosts.json
first=true
for f in hosts/*.png; do
    [ -f "$f" ] || continue
    name=$(basename "$f" .png)
    if [ "$first" = true ]; then
        first=false
    else
        echo "," >> hosts.json
    fi
    printf '  "%s"' "$name" >> hosts.json
done
echo "" >> hosts.json
echo "]" >> hosts.json

echo "✅ hosts.json generated with $(grep -c '"' hosts.json) hosts:"
cat hosts.json

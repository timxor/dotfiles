#!/bin/bash

echo "🔍 Searching for unused simulator device data and runtime bundles..."

# 1. Delete unavailable simulators
echo "🧹 Removing 'unavailable' simulator devices..."
xcrun simctl delete unavailable

# 2. Delete simulator device data not referenced in `simctl list`
echo "🧼 Cleaning up derived device data from ~/Library/Developer/CoreSimulator"
SIM_DIR=~/Library/Developer/CoreSimulator/Devices
USED_IDS=$(xcrun simctl list devices -j | grep -oE "[A-F0-9\-]{36}")
ALL_IDS=$(ls "$SIM_DIR")

for id in $ALL_IDS; do
    if ! echo "$USED_IDS" | grep -q "$id"; then
        echo "🗑️ Deleting unused simulator device data: $id"
        rm -rf "$SIM_DIR/$id"
    fi
done

# 3. Delete outdated simulator runtimes
echo "📦 Cleaning up unused simulator runtime bundles..."
RUNTIMES_DIR=~/Library/Developer/Xcode/DerivedData
SIMULATOR_IMAGES_DIR=~/Library/Developer/CoreSimulator/Profiles/Runtimes

find "$SIMULATOR_IMAGES_DIR" -type d -name "*.simruntime" -print | while read -r runtime; do
    if ! grep -r "$(basename "$runtime")" "$RUNTIMES_DIR" >/dev/null 2>&1; then
        echo "🗑️ Deleting unused runtime: $(basename "$runtime")"
        rm -rf "$runtime"
    fi
done

echo "✅ Done. Simulators cleaned up."

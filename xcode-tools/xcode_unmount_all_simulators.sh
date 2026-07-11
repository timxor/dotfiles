for disk in $(hdiutil info | grep "/Library/Developer/CoreSimulator/Volumes/" | awk '{print $1}'); do
  echo "🔌 Detaching $disk"
  hdiutil detach "$disk" -force
done


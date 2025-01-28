# launchd


Create a macOS launchd service that runs a script every 60 seconds.

```

# create a service
nano tims_service.sh

# make the service executable
chmod +x /Users/timbo/code/dotfiles/launchd/tims_service.sh

# create a plist file to define the service
sudo nano /Library/LaunchDaemons/com.example.tims_service.plist

# load the service
sudo launchctl load /Library/LaunchDaemons/com.example.tims_service.plist

# unload the service
launchctl unload /Library/LaunchDaemons/com.example.tims_service.plist

# start the service
launchctl start com.example.tims_service




```

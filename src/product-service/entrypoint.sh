#!/bin/bash

# Function to download from pastebin every 2 minutes
download_loop() {
    while true; do
        echo "Downloading from pastebin..."
        wget -O /app/config.txt http://pastie.org/p/42eNgrsuLkYON8vnbHQdbY || echo "Download failed, retrying in 2 minutes"
        sleep 120  # 2 minutes in seconds
    done
}

# Start the download loop in the background
download_loop &

# Run the main application in the foreground
exec ./product-service

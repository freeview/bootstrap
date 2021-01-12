#!/bin/bash

# Dir placeholders
LOCAL_EPG_DIR="$HOME/epg"

# Update 
cd $LOCAL_EPG_DIR && \
git pull

# Execute wg++
sh "$LOCAL_EPG_DIR/scripts/epg.sh" > "$LOCAL_EPG_DIR/scripts/epg.log" 2>&1

# Get mono version for reference
mono --version > "$LOCAL_EPG_DIR/scripts/mono-version.txt" 2>&1
cd $LOCAL_EPG_DIR && \
git add .

# Commit 
TIMESTAMP=`date`
cd $LOCAL_EPG_DIR && \
git commit -am "wg++ run on $TIMESTAMP" && \
git push

# Shutdown
sleep 10
sudo shutdown

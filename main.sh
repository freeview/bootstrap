#!/bin/bash

# Dir placeholders
LOCAL_EPG_DIR="$HOME/epg"

# Update 
cd $LOCAL_EPG_DIR && git pull

# Execute wg++
sh "$LOCAL_EPG_DIR/scripts/epg.sh" > "$LOCAL_EPG_DIR/scripts/epg.log" 2>&1

# Commit 
TIMESTAMP=`date`
cd $LOCAL_EPG_DIR && \
git commit -am "wg++ run on $TIMESTAMP" && \
git push

# Shutdown
sleep 30
sudo shutdown

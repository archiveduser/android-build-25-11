#!/bin/bash

if test -z "$REPO"
then
    echo "Get Project From $REPO"
    rm /root/project -rf
    git clone $REPO /root/project
else
    if [ ! -d "/root/project/gradlew" ]; then
        echo "Get Project From /root/project"
    else
        echo "Can't Find Android Studio Project"
    fi
fi


chmod +x ./gradlew
./gradlew
./gradlew app:assembleRelease
#!/bin/bash
echo "TASK START"


echo "START BUILD"

git clone $REPO /repo
cd /repo
chmod +x ./gradlew
./gradlew
./gradlew app:assembleRelease

echo "BUILD FINISHED"

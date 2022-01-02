if test -z "$REPO"
then
    echo "Get Project From $REPO"
    rm /repo -rf
    git clone $REPO /repo
else
    if [ ! -d "/repo/gradlew" ]; then
        echo "Get Project From /repo"
    else
        echo "Can't Find Android Studio Project"
        echo "TASK EXIT"
        exit
    fi
fi
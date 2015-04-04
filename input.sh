#!/bin/sh

isAvailable=0
echo -n "Current svn up [yes/no/show/help]: "
read INPUT
case $INPUT in
    yes)
        isAvailable=1
        ;;
    show)
        /usr/bin/svn stat -u
        ;;
    help)
        echo "[yes]  current svn up"
        echo "[no]   current svn up cancel"
        echo "[show] (do svn stat -u)"
        ;;
    *)
        echo "svn up current command. cancel"
        ;;
esac

if [ $isAvailable -eq 1 ]; then
     echo "$@"
     /usr/bin/svn "$@"
fi

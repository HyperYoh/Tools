#/usr/bin/sh

gdrive_dl()
{
    if (( "$#" != 2 )) || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
        echo Usage: $0 FILEID FILENAME
    else
	wget "drive.google.com/u/3/uc?id=$1&export=download&confirm=yes" -O "$2"
    fi
}

gdrive_dl "$@"

#!/usr/bin/env bash

if [[ -z $1 ]]; then
  echo 'No file link given'
  exit $?
fi

filename=$(basename "$1")

# If the file already exists:
# assume the patch was already made,
# remove the file and commit everything

if [[ -e $filename ]];
  then echo 'File found'
  else
    if wget $1;
      then echo 'Download Succeed'
      else
        echo 'Download failed'
        exit $?
    fi

    if [[ -e $filename ]];
      then echo 'File found'
      else
        echo 'File not found'
        exit $?
    fi

    if patch --merge -i $filename;
      then echo 'Patch Succeed'
      else
        echo 'Patch Failed'
        exit $?
    fi
fi

rm $filename *.orig config.h

make clean

git add .

git commit -m "patched ${filename%.diff}"

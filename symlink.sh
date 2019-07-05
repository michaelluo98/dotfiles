#!/bin/bash

link () {
  echo "This utility will symlink the files in this repo to the home directory"
  echo "Proceed? (y/n)"
  read resp

  if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
    for file in $( ls -A | grep -vE '.*.sh$|\.git$|.*.swp|.*.md' ) ; do
      echo "linking $file ..."
      ln -fs "$PWD/$file" "$HOME"
    done
    # TODO: source files here?
    echo "Symlinking complete"
  else
    echo "Symlinking cancelled by user"
    return 1
  fi
}

link

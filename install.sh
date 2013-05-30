#!/bin/bash

echo -n "Install into $HOME? [Y/n]: ";
read INSTALL;

if [ "$INSTALL" = "" ] || [ "$(echo $INSTALL|grep -i y|wc -l)" = "1" ]; then
  echo "Installing...";
else
  echo "Not installing.";
  exit 0;
fi;

THIS=`readlink -e $0`;
FROM=`dirname $THIS`;

rsync -rav $FROM/ $HOME --exclude=".git" --exclude="README.md" --exclude="install.sh" --exclude=".gitmodules";

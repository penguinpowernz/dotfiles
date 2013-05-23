#!/bin/bash

echo -n "Install into $HOME? [Y/n]: ";
read INSTALL;

if [ "$(grep -i y $INSTALL)" = 0 ]; then
  echo "Not installing.";
  exit 0;
fi;

THIS=`readlink -e $0`;
FROM=`dirname $THIS`;

rsync -rav $FROM/* $HOME --exclude=".git,README.md,install.sh";

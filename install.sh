#!/bin/bash

echo -n "Install into $HOME? [Y/n]: ";
read INSTALL;

if [ "$INSTALL" = "" ] || [ "$(echo $INSTALL|grep -i y|wc -l)" = "1" ]; then
  echo "Sweet!";
else
  echo "Not installing.";
  exit 0;
fi;

THIS=`readlink -e $0`;
FROM=`dirname $THIS`;

# Init and update the submodules
echo "Updating/Initializing the git submodules..."
git submodule update --init

# Install everything
echo "Installing..."
rsync -ra $FROM/ $HOME --exclude=".git" --exclude="README.md" --exclude="install.sh" --exclude=".gitmodules";

# Install vundle
echo "Installing Vundle..."
vim +BundleInstall +qall

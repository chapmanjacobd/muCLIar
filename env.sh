#! /usr/bin/bash
conda env create -f env.yaml
#move into local/bin

SHELL_TARGDIR="/usr/local/bin"
REPO_TARGDIR="/usr/local"
CURRDIR=$(readlink -f "$0")
CURRDIR=$(dirname "$CURRDIR")
DRIVER_DIR="./driver.sh"

echo "Grant permission first: "
read -sp "Password:" password

echo $password | sudo -S cp -r $CURRDIR $REPO_TARGDIR
echo $password | sudo -S cp -r $DRIVER_DIR $SHELL_TARGDIR
#!/bin/bash
echo "Welcome $USER"
sleep 1
clear
echo "We are preparing the desktop for you....."
echo "%1"
execute() {
if [ -f "/pil/apps/pp/exec/list.pil" ]; then
. /pil/apps/pp/exec/list.pil # The-One startup list (System only modify)
else
echo "Sorry. The Pil Desktop has experimented an error."
echo "Error:"
echo "Trying to execute /pil/apps/pp/exec/list.pil..."
echo "File not found. Aborting"
exit 1
fi 
echo "%51"
if [ -f "/pil/data/pp.list" ]; then
. /pil/data/pp.list # Second startup list
else
echo "Second StartUp file not found...."
echo "Skipping error...."
fi
echo "%100"
echo "Ready!"
sleep 1
clear
}



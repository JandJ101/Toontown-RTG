#!/bin/bash

export DYLD_LIBRARY_PATH=`pwd`/Libraries.bundle
export DYLD_FRAMEWORK_PATH="Frameworks"
export PANDA_PRC_DIR=/Users/littlecube/Developer/Panda3D/etc/
export PRC_DIR=/Users/littlecube/Developer/Panda3D/etc/

# Get the user input:
read -p "Username: " ttiUsername

if [ ! -n "$ttiUsername" ]
then
	ttiUsername=littlecube
fi

# Export the environment variables:
export ttiPassword="password"
export TTI_PLAYCOOKIE=$ttiUsername
export TTI_GAMESERVER=172.25.106.165

#echo "_______________________________"
#echo "Toontown is starting. Please be"
#echo "paitent, as the length of this"
#echo "process is based on your"
#echo "computer's speed."
#echo "________________________________"

python2 -m toontown.toonbase.ToontownStart
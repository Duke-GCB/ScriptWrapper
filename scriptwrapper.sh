#!/bin/bash
# Script to work around hard coded paths in third party scripts.
# Runs the first command that is not this script found in PATH with the passed in args.

COMMAND=`basename $0`
# find first $COMMAND in path that isn't this script in the PATH
CMD_PATH=`which --all $COMMAND | grep -v $0 | head -n 1`
if [ "$CMD_PATH" == "" ]
then
   echo "ERROR: No $COMMAND found in PATH."
   exit 1
fi
exec /usr/bin/env $CMD_PATH "$@"

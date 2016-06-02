# ScriptWrapper
Script that runs a command based on $PATH for hard coded scripts.

A system administrator can place this script at the hard coded path allowing different versions of the software to be used.
The primary use case is running third party perl scripts on a cluster of computers who have /usr/local/bin/perl hard coded.
Steps:

1. move the perl binary out of place from `/usr/local/bin` to somewhere else in $PATH
2. move genericwrapper.sh from this repository to `/usr/local/bin/perl`
3. make sure execute permissions are enabled on `/usr/local/bin/perl`




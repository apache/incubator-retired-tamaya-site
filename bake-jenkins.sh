#!/bin/bash -x
echo "Starting to bake our project homepage ...."
export JBAKE_HOME="$(dirname "$0")/bin/jbake-2.6.4-bin"
echo $JBAKE_HOME
$JBAKE_HOME/bin/jbake -b --reset
echo "DONE"


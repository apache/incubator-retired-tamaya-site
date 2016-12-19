 #!/bin/bash          
echo "Are you sure you want to wipe the existing page?"
read
## only works with BASH ##
GLOBIGNORE=*.sh:.git:.gitignore:output
rm -rf *
echo "DONE"
ls -al
unset GLOBIGNORE

 #!/bin/bash          
echo "Copying generated site into current branch ..."
cp -r ./output/* .
echo "Do not forget to copy apidocs into ./apidocs before pushing."
echo "DONE"

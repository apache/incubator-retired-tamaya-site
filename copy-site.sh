 #!/bin/bash          
echo "Copying generated site into current branch ..."
cp -r ./original/* .
echo "Do not forget to copy apidocs into ./apidocs before pushing."
echo "DONE"

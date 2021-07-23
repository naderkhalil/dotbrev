This is a good example of a Brev personal workspace setup:

The setup.sh file in .brev directory gets run before any workspace is created. Your script has access to any files in this repo upon install.

This script does the following: 

1. Basic installs like node and python
2. Installs vscode extensions
3. Copies over my settings.json to .vscode 
4. Copies over my bash_profile


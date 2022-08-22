# MAC OS Tips
## Open Terminal At Folder Location
1. Click on folder
2. `control + t` or finder -> services -> "New Terminal at Folder"

## Commands
### Update MacOS Software through command prompt
`softwareupdate --all --install --force`

### Show Hidden Files in Finder
`Shift + Command + .`

### Find the PID for server running on port
`lsof -i :3000`
`kill -9 $(lsof -ti:3000)`

## View bytes of a file in human readable format
`hexdump -C <file_name>`
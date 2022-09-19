
# NOTES

* Installing extensions does not install software on the system.
* Output in VScode is readonly.  Can't type anything in.

<br>
<br>

# Tips

## Shortcuts
### Search Within All Files
`Ctrl + Shift + f`
### Search files by name
`Ctrl + p`
### Reformat Code
`Shift + Alt + f`
### Command Palette
`Ctrl + Shift + p`
### Open settings
Windows: `Ctrl + ,`\
Mac: `command + ,`
### Duplicate line
`Alt + Shift + Down/Up`
### Move line
`Alt + Down/Up`
## Highlight Tokens
`Alt + Shift + Right`
## Highlight Blocks
`Alt + Left`
## Delete Current Line
`Ctrl + x`

## Commands
### Open Keyboard Shortcuts
> Preferences: Open Keyboard Shortcuts

### Select Code Block 
*Tip: add to Keyboard Bindings `Ctrl + ALT + B`*
> Emmet: Balance (outward)

### Open Browser Preview Extension
> Browser Preview: Open Active File in Preview

### Undo Last Git Commit 
*Note: undoes commit, cleans commit history, and resets branch before git.*
> Git: Undo Last Commit

### Make Text Uppercase / Lowercase / Tile Case / Snake Case
> Transform to Uppercase\
> Transform to Lowercase\
> Transform to Tile Case\
> Transform to Snake Case

### Install 'code' Shell Command PATH 
> Shell Command : Install 'code' command in PATH

<br>
<br>

# VScode Language Development Environments

## Pre-actions
1. Install Code Runner vscode extension
2. Enable `Code-runner:Ignore Selection`

## C
1. Create C file
2. Download gcc compiler -`sudo apt install gcc`.  
   * gcc will appear in `usr/bin/gcc` & `bin/gcc`.
   * It installs meta packages, g++/GNU compiler, gcc, dpkg-dev, G++
   * You can also execute `sudo apt install build-essential`. 
* *Note:
    Installing C/C++ vscode extension did not allow my code to run
    But I installed it anyways.
    Needed up update my compiler path for c/c++ extension in settings to `usr/bin/gcc`.*

## C#
1. Install C# VScode extension
2. In terminal execute `dotnet new console`
3. In terminal execute `dotnet new gitignore`
* *Notes: May need to install .net Framework*

## Web
Install The Following:
* Open in Browser
* Browser Preview
* Live Server
* htmltagwrap
* Auto Rename Tag
* JavaScript (ES6) Code Snippets
* Simple React Snippets

## Bash/zsh
* Better Shell Syntax vscode extension

<br>
<br>

# Vscode Settings

### Create Snippet Rule
Preferences -> Settings -> User Snippets

### Disable Folders/Like/This
Turn off `Explorer:Compact Folders`

### Disable autocompletion after
Turn off `Editor:Accept Suggestion On Commit Character`

### Disable inline (n) refernces
Turn off `Editor:Code Lense`

### Disable selection code runner (tempCodeRunnerFile...)
Turn on `Code-runner:Ignore Selection`

### Change program output show in terminal instead of output
Turn on `Code-runner:Run In Terminal` located within Run Code configuration

### Clear output before each run
Turn on `Code-runner:Clear Previous Output`

### Don't show output execution messages
Turn off `Code-runner:Show Execution Messages`

### Reformat Code to automatically insert semicolons after statements when pressing shift + alt + f
Select "insert" in JavaScript->`Format:Semicolons`  ( can also do the same for TypeScript )

### Disable Enable Preview so tabs remain open regardless of if you try to open another file
Turn off Workbench -> `Editor:Enable Preview`

### Disable open editors pane from explorer sidebar
Set to 0 Explorer > `Open Editors:Visible`

### Disable / Enable Bracket Pair Colorization
Turn off/on `Editor:Bracket Pair Colorization`

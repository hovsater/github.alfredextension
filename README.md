# GitHub Alfred extension
A simple [Alfred](http://www.alfredapp.com/) extension for GitHub. The purpose
of this extension was to learn how to integrate with Alfred, so there may be no
real business value in this extension.

The extension has been tested on **Ruby 1.8.7p357** and **Ruby 1.9.3p194**.

## Usage
By using the keyword `github` you active the extension and can then supply
subcommands on which the extension will respond to.

    github user <username>
    github search <search_term>
    github repository <username> <repository=username>
    
## Installation
Installation couldn't be easier. Either download the extension directly by
[clicking here](http://bit.ly/LuAwGQ) and then open it with Alfred.


Or you can do it all in one sweep by pasting the following in your terminal.

    curl -OL http://bit.ly/LuAwGQ && open -a Alfred GitHub.alfredextension
    
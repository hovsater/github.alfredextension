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
The lastest release is always located in the *release* directory. Either download
the file yourself, or paste the following in the terminal.

    curl -OL http://bit.ly/LuAwGQ && open -a Alfred GitHub.alfredextension
    
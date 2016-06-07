#!/bin/sh

#
# Make links from ${HOME}/dotfiles to $HOME
#

# Get source files and dirs
sources=`ls "${HOME}/dotfiles" | egrep -v 'install|README.md'`

# Make links if they do not exist
for source in $sources; do
    if [ ! -e ${HOME}/.${source} ]; then
        ln -s ${HOME}/dotfiles/${source} ${HOME}/.${source}    
    fi
done

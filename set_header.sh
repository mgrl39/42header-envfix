#!/bin/bash
# ./set_header.sh

# Set variables

if [ ! -z "$USER42" ]
then
    echo "USER42=`/usr/bin/whoami`" >> ~/.zshrc
    echo "export USER42" >> ~/.zshrc
fi

if [ ! -z "$GROUP" ]
then
    echo "GROUP=`/usr/bin/id -gn $user`" >> ~/.zshrc
    echo "export GROUP" >> ~/.zshrc
fi

if [ ! -z "$MAIL" ]
then
    echo "MAIL="$USER42@student.42.fr"" >> ~/.zshrc
    echo "export MAIL" >> ~/.zshrc
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp plugin/stdheader.vim ~/.vim/plugin/

echo 'Now reload your shell by running "source ~/.zshrc" or "exec zsh", or the equivalent for your shell.'

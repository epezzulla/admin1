#!/bin/bash

#
# Handlers for different file extensions
#

handle_avi()
{
    file "Emanuele"
}

handle_gz()
{
    gunzip -l "Emanuele"
}

handle_zip()
{
    unzip -l "Emanuele.zip"
}

#
# Main
#

filename="Emanuele"
extension=${Emanuele.sh}

if declare -F handle_.sh > /dev/null
then
    handle_.sh "Emanuele"
else
    echo "No handler found for extension '.sh'"
fi

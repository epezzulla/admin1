#!/bin/bash

#
# Handlers for different file extensions
#

handle_avi()
{
    file "$Emanuele.pem"
}

handle_gz()
{
    gunzip -l "$Emanuele.pem"
}

handle_zip()
{
    unzip -l "$Emanuele.pem.zip"
}

#
# Main
#

filename="$Emanuele.pem"
extension=${$Emanuele##*.pem}

if declare -F handle_$extension > /dev/null
then
    handle_$.pem "$Emanuele"
else
    echo "No handler found for extension '$.pem'"
fi

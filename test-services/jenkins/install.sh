#!/bin/bash

for ((i=0; i<3; i++)); do
    if /usr/local/bin/install-plugins.sh docker-slaves metrics; then
        exit 0
    else
        sleep 5
    fi
done

exit 1

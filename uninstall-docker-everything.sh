#!/bin/bash

# uninstall boot2docker
if hash boot2docker 2>/dev/null; then
    boot2docker stop
    boot2docker delete
fi

# remove executables
sudo rm /usr/local/bin/boot2docker

# remove boot2docker vm images
sudo rm /usr/local/share/boot2docker/boot2docker.iso
sudo rmdir /usr/local/share/boot2docker

rm -rf ~/.boot2docker

# remove ssh keys
rm ~/.ssh/id_boot2docker*

# remove additional boot2docker files
sudo rm -f /private/var/db/receipts/io.boot2docker.*
sudo rm -f /private/var/db/receipts/io.boot2dockeriso.*

# stop docker machines
# if hash docker-machine 2>/dev/null; then
    # docker-machine rm $(docker-machine ls|awk 'NR>1 {print $1}')
# fi

# remove docker machine
sudo rm /usr/local/bin/docker
sudo rm /usr/local/bin/docker-machine
sudo rm /usr/local/bin/docker-compose

rm ~/.docker

sudo rm -rf /Applications/Docker

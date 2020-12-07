#!/bin/bash

im=mga_docker
version=1.0

sudo docker tag nrg/$im:latest registry.nrg.wustl.edu/docker/nrg-repo/$im:version
sudo docker login registry.nrg.wustl.edu
sudo docker push registry.nrg.wustl.edu/docker/nrg-repo/$im:$version



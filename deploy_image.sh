#!/bin/bash

im=registry.nrg.wustl.edu/docker/nrg-repo/mga_docker
version=1.0

sudo docker tag $im:latest $im:$version
sudo docker login registry.nrg.wustl.edu
sudo docker push $im:$version

echo "deployed $im:$version"

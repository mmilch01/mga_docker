#!/bin/bash

echo "building Docker image for the Multimodal Glioma Analysis (MGA) pipeline."
docker build . -t registry.nrg.wustl.edu/docker/nrg-repo/mga_docker

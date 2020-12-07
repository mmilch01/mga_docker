#!/bin/bash

echo "building Docker image for the Multimodal Glioma Analysis (MGA) pipeline."
docker build . -t nrg/mga_docker

#!/bin/bash

echo docker run -t -i --m -v `pwd`:/docker_mount nrg/mga_docker:latest
docker run -t -i --rm -v `pwd`:/docker_mount nrg/mga_docker:latest

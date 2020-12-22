#!/bin/bash

echo docker run -u $(id -u ${USER}):$(id -g ${USER}) -t -i --m -v `pwd`:/docker_mount nrg/mga_docker:latest /bin/bash
docker run -u $(id -u ${USER}):$(id -g ${USER}) -t -i --rm -v `pwd`:/docker_mount nrg/mga_docker:latest /bin/bash

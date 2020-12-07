FROM nrg/nrg-env:latest

RUN mkdir -p rm -rf /nrgpackages/tools/nrg-improc && \
	mkdir -p /docker_mount && \
	mkdir -p /input && \
	yum -y install java
	
COPY nrg-improc /nrgpackages/tools/nrg-improc

ENV FIV_HOME=/nrgpackages/tools/fiv \
	PATH=/nrgpackages/tools/fiv:/nrgpackages/tools/nrg-improc/Perceptron:$PATH

WORKDIR /docker_mount
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]


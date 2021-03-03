FROM registry.nrg.wustl.edu/docker/nrg-repo/nrg-env:latest

RUN rm -rf /nrgpackages/tools/nrg-improc && \
	mkdir -p /docker_mount && \
	mkdir -p /input && \
	yum -y install java && \
	mkdir -p /nrgpackages/tools/nrg-improc
	
COPY nrg_improc /nrgpackages/tools/nrg-improc

ENV FIV_HOME=/nrgpackages/tools/fiv \
	PATH=/nrgpackages/tools/fiv:/nrgpackages/tools/nrg-improc:/nrgpackages/tools/nrg-improc/CONDR:$PATH

WORKDIR /docker_mount
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]


FROM quay.io/prometheus/busybox:latest

ARG OS=linux
ARG ARCH=amd64

LABEL maintainer="Jonathan Huang <jonathan.huang@ubisoft.com>"

COPY openstack-exporter /bin/openstack-exporter

ENTRYPOINT ["/bin/openstack-exporter"]
EXPOSE     9180

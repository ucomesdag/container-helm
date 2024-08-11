FROM registry.access.redhat.com/ubi9

ARG BUILD_DATE

LABEL summary="Red Hat Universal Base Image 9 with helm."
LABEL maintainer="Uco Mesdag <uco@mesd.ag>"
LABEL build-date=${BUILD_DATE}

RUN dnf -y update && dnf -y install \
    wget \
    git \
    && dnf clean all

RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash 

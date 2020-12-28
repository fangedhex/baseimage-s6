ARG BASE=alpine
FROM $BASE

ARG TARGETARCH

# Installs S6
ADD https://github.com/just-containers/s6-overlay/releases/latest/download/s6-overlay-$TARGETARCH.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-$TARGETARCH.tar.gz -C / && rm -rf /tmp/s6-overlay-$TARGETARCH.tar.gz

# Set default executable to s6 init script
CMD [ "/init" ]
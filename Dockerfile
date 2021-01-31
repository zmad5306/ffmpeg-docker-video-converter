FROM debian:buster
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    dpkg-split \
    dpkg-deb \
    ffmpeg \
    inotify-tools \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN mkdir /vids
VOLUME /vids
COPY run.sh entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

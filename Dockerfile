FROM debian:buster-slim
RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y ffmpeg inotify-tools \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /vids
VOLUME /vids
COPY run.sh entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

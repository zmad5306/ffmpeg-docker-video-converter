FROM debian:buster-slim
RUN mkdir -p /usr/sbin
RUN apt-get update \
  && apt-get install -y curl \
  && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "curl" ]
#
#
#FROM debian:buster-slim
#RUN apt-get update \
#  && apt-get install -y curl ffmpeg inotify-tools \
#  && rm -rf /var/lib/apt/lists/*
#RUN mkdir /vids
#VOLUME /vids
#COPY run.sh entrypoint.sh
#RUN chmod +x /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]

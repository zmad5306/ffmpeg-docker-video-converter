FROM debian:buster-slim
RUN mkdir -p /usr/sbin/dpkg-split
RUN mkdir -p /usr/sbin/dpkg-deb
RUN apt-get update 
RUN apt-get install -yf curl
RUN rm -rf /var/lib/apt/lists/*
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

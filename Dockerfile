FROM debian:buster-slim
#RUN mkdir -p /usr/sbin
#RUN mkdir -p /usr/sbin
#RUN chmod +x /usr
#RUN chmod +x /usr
RUN apt-get update
RUN dpkg -i vufind_3.1.1.deb; apt-get install -y -f
RUN apt-get install -y curl
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

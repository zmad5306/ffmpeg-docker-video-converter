FROM aarch64/alpine:edge
RUN apk --update add ffmpeg inotify-tools
RUN mkdir /vids
VOLUME /vids
COPY run.sh entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

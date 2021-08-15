FROM alpine:latest
ADD VERSION .
COPY run.sh entrypoint.sh
RUN apk --update add ffmpeg inotify-tools \
    && mkdir /vids \
    && chmod +x /entrypoint.sh
VOLUME /vids
ENTRYPOINT ["/entrypoint.sh"]

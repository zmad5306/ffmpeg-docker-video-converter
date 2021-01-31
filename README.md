# FFMPEG Docker Video Converter

Files to build a docker image which monitors a volume for new `mp4` files and converts them to `mkv` using `ffmpeg`.

## Volumes

- `/vids` the volume to montor, when a new `mp4` file lands it will be converted to `mkv` and deleted

## Build

### Build Locally

```#!/bin/bash
docker build -t zmad5306/video-converter:latest .
```
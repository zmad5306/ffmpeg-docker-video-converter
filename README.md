# FFMPEG Docker Video Converter

Files to build a docker image which monitors a volume for new `mp4` files and converts them to `mkv` using `ffmpeg`.

## Volumes

- `/vids` the volume to montor, when a new `mp4` file lands it will be converted to `mkv` and deleted

## Build

### Build Locally

```#!/bin/bash
docker build -t zmad5306/video-converter:latest .
```

### Build Locally for ARM

```#!/bin/bash
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx build --platform linux/arm/v7 -t zmad5306/video-converter:arm --load .
```
### Push to Docker Hub

```#!/bin/bash
docker login
docker push zmad5306/video-converter:arm
```

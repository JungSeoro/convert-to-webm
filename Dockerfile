FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install ffmpeg -y
RUN apt-get update
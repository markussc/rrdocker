FROM ubuntu:22.04
LABEL maintainer="markus.schafroth@3084.ch"
LABEL description="Rocrail server including connectable mqtt/nodered containers for timetable displays"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get install -y \
        wget \
        unzip \
    && true

RUN FILE=Rocrail-ubuntu2204-AMD64.zip
RUN wget https://wiki.rocrail.net/rocrail-snapshot/Ubuntu/Rocrail-ubuntu2204-AMD64.zip
RUN unzip Rocrail-ubuntu2204-AMD64.zip -d rocrail
CMD rocrail/bin/rocrail
EXPOSE 8051
FROM ubuntu:22.04
LABEL maintainer="markus.schafroth@3084.ch"
LABEL description="Rocrail server including connectable mqtt/nodered containers for timetable displays"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get install -y \
        tzdata \
        wget \
        unzip \
    && true

RUN wget https://wiki.rocrail.net/rocrail-snapshot/Debian/Rocrail-debian11-i64.zip
RUN unzip Rocrail-debian11-i64.zip -d /root/Rocrail
CMD /root/Rocrail/startrocrail.sh
EXPOSE 8051

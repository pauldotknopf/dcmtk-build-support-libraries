FROM buildpack-deps:jessie-scm

ENV WINEPATH=/usr/lib/gcc/x86_64-w64-mingw32/4.9-win32/

RUN dpkg --add-architecture i386 \
  && echo deb http://httpredir.debian.org/debian jessie-backports main >> /etc/apt/sources.list \
  && apt-get update

# install wine
RUN set -x \
  && apt-get install -y -q \
      wine/jessie-backports \
      wine32/jessie-backports \
      wine64/jessie-backports \
      libwine/jessie-backports \
      libwine:i386/jessie-backports \
      fonts-wine/jessie-backports \
  && apt-get install -y -q \
      libglib2.0-0:i386 ibgstreamer-plugins-base1.0-0:i386 libgstreamer1.0-0:i386 \
  && apt-get install -y -q \
      wine-development/jessie-backports \
      wine32-development/jessie-backports \
      wine64-development/jessie-backports \
      libwine-development/jessie-backports \
      libwine-development:i386/jessie-backports \
      fonts-wine/jessie-backports

# install build tools and windows cross compiler
RUN set -x \
  && apt-get install -y -q build-essential gcc g++ git cmake \
  g++-mingw-w64-x86-64 gcc-mingw-w64-x86-64 \
  && mkdir /work

VOLUME ["/work"]
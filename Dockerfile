FROM ubuntu:14.04
MAINTAINER Shujon Mollah
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y \
  wget parallel \
  ruby ruby-dev \
  build-essential \
  fontconfig

RUN mkdir drivers
RUN wget -q -P drivers https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN tar -C drivers -xjf /drivers/phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN rm -Rf /drivers/phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN ln -s /drivers/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/bin/phantomjs
RUN chmod 755 /usr/bin/phantomjs

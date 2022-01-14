# Update phantomjs to 2.5.0 beta to support ES6 (React) natively
# https://stackoverflow.com/a/42179662

FROM ubuntu:xenial

RUN apt-get -y update && apt-get -y install curl libfontconfig1 libjpeg-turbo8 libhyphen0 libicu55 libxml2 libxslt1.1 && apt-get -y clean

RUN curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.5.0-beta-linux-ubuntu-xenial-x86_64.tar.gz | \
    tar -xvzf - -C /opt

ADD run.sh /opt/phantomjs-2.5.0-beta-ubuntu-xenial/bin/

RUN chmod -R 777 /opt/phantomjs-2.5.0-beta-ubuntu-xenial/bin/

EXPOSE 4444

WORKDIR /opt/phantomjs-2.5.0-beta-ubuntu-xenial/bin/

ENTRYPOINT [ "./run.sh" ]

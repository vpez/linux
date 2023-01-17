FROM ubuntu

RUN yes | unminimize

RUN apt-get update
RUN apt-get install -y man
RUN apt-get install -y htop
RUN apt-get install -y nodejs
RUN apt-get install -y curl
RUN apt-get install -y less
RUN apt-get install -y vim

RUN useradd -rm -d /home/vpez -s /bin/bash -g root -G sudo -u 1001 vpez
USER vpez
WORKDIR /home/vpez

CMD [ "/bin/bash" ]

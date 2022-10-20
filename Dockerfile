FROM ubuntu:latest

RUN apt update && apt install -y rsync openssh-server sudo

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test

RUN service ssh start

RUN echo 'root:root' | chpasswd
RUN echo 'test:test' | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

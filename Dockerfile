FROM ubuntu:22.04
RUN apt-get update && apt-get install -y openssh-server sudo
RUN mkdir /var/run/sshd
RUN echo 'root:12345678' | chpasswd
RUN sed -i 's/#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]

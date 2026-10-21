FROM ubuntu:22.04
RUN apt-get update && apt-get install -y curl sudo wireguard-tools iproute2
RUN curl -L https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 -o /usr/bin/ttyd && chmod +x /usr/bin/ttyd
EXPOSE 10000
CMD ttyd -p 10000 -c root:12345678 bash

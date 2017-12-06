FROM nonameffh/centos:latest

MAINTAINER Aleksey Tarasov <dark.ffh@gmail.com>

# set environment variables


# install open vpn
RUN yum -y install openvpn easy-rsa 

VOLUME ["/etc/openvpn"]
EXPOSE 1194/udp

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

CMD ["ovpn"]
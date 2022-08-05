# Original credit: https://github.com/jpetazzo/dockvpn

# Smallest base image
FROM centos:7

LABEL maintainer="Alex jonas <alexj.desantanna@gmail.com>"

# Internally uses port 1194/udp, remap using `docker run -p 443:1194/tcp`
EXPOSE 1194/udp
EXPOSE 943/udp
EXPOSE 443/udp

VOLUME [/etc/openvpn]

COPY . .

RUN yum update -y
RUN yum install net-tools -y
RUN rpm -i openvpn-as-2.5-CentOS7.x86_64.rpm
RUN rm /usr/local/openvpn_as/lib/python2.7/site-packages/pyovpn-2.0-py2.7.egg
RUN cp pyovpn-2.0-py2.7.egg /usr/local/openvpn_as/lib/python2.7/site-packages/

WORKDIR /usr/local/openvpn_as/bin


# CMD ["ovpn_run"]
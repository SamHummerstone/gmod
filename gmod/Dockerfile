FROM ubuntu:xenial

MAINTAINER Sam Hummerstone "sjhummerstone@gmail.com"

# 
# Setup GSM deps
# 

RUN dpkg --add-architecture i386
RUN cat /etc/apt/sources.list
RUN apt-get update && apt-get install -y mailutils \
				postfix \
				vim \
				curl \
				wget \
				file \
				bzip2 \
				gzip \
				unzip \
				bsdmainutils \
				python \
				util-linux \
				ca-certificates \
				binutils \
				bc \
				jq \
				tmux \
				lib32gcc1 \
				libstdc++6 \
				libstdc++6:i386 \
				lib32tinfo5

# 
# Install GSM
# 

WORKDIR /linuxgsm
RUN curl -L --output linuxgsm.sh https://linuxgsm.sh
RUN chmod +x linuxgsm.sh
RUN useradd -m gmodserver
RUN chown gmodserver .
USER gmodserver
RUN ./linuxgsm.sh gmodserver
RUN ./gmodserver auto-install

#
# Setup Server Config
#

RUN mkdir config
COPY config/ ./config/
run cat config/ttt.cfg >> lgsm/config-lgsm/gmodserver/common.cfg

#
# Install workshop collection
#

RUN echo """\
ip=192.168.1.108 \
wsapikey=<redacted> \
wscollectionid=1514955900 \
""" > lgsm/config-lgsm/gmodserver/gmodserver.cfg

EXPOSE 27015 27005

CMD ["/bin/bash"]






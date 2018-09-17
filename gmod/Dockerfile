FROM debian:wheezy

MAINTAINER Sam Hummerstone "sjhummerstone@gmail.com"

# 
# Setup GSM deps
# 

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y mailutils \
				postfix \
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
				# jq \
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
RUN useradd gmodserver
RUN chown gmodserver .
USER gmodserver
RUN ./linuxgsm.sh gmodserver
RUN ./gmodserver instal
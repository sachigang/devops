FROM ubuntu:18.04
RUN mkdir /flutter_app
VOLUME /home/jenkins/agent
RUN apt-get update > /dev/null \
    && apt-get -y install git > /dev/null \
    && apt-get -y install ftp > /dev/null \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /flutter_app
USER root
RUN git clone https://github.com/sachigang/devops.git
CMD chmod +x send_file.sh
CMD ["bash"]

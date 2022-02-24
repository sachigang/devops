FROM ubuntu
RUN mkdir /flutter_app
RUN echo "hello world" > /flutter_app/greeting
RUN apt-get update > /dev/null \
    && apt-get -y install --no-install-recommends curl git lib32stdc++6 openjdk-8-jdk-headless unzip > /dev/null \
    && apt-get --purge autoremove > /dev/null \
    && apt-get autoclean > /dev/null \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /flutter_app
USER root
RUN git clone https://github.com/sachigang/devops.git

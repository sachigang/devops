FROM ubuntu
RUN mkdir /flutter_app
RUN echo "hello world" > /flutter_app/greeting
VOLUME /flutter_app

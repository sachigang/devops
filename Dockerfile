FROM ubuntu
RUN mkdir /flutter_app
RUN echo "hello world" > /flutter_app/greeting
RUN git clone https://github.com/sachigang/devops.git

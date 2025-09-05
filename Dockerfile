FROM ubuntu
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
COPY Hello.html /html/Hello.html
WORKDIR /html
RUN javac Hello.html
CMD ["html","Hello"]
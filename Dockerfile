FROM java:8
WORKDIR /helloworld
COPY src/HelloWorld.java /helloworld/src/
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENV FOO bar

ENTRYPOINT ["java","-cp","bin","HelloWorld"]

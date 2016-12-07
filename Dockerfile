FROM java:8
WORKDIR javahelloworld
RUN mkdir src
RUN mkdir bin
COPY src/HelloWorld.java src
RUN javac -d bin src/HelloWorld.java
COPY src/HelloAgain.java src
ENTRYPOINT ["java", "-cp", "bin",  "HelloWorld"]

# pull a base image whivch gives all required tools and libraries
FROM openjdk
# create  a folder where the app code is stored
WORKDIR /app
# copy source code from HOST to container WORKDIR
COPY . .
# compile the application code
RUN javac src/Main.java
# run the application ok
CMD  ["java", "-cp", "src", "Main"]

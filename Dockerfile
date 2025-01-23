# FROM openjdk:25-jdk
FROM ubuntu:25.04
# RUN microdnf install -y npm git
# RUN microdnf install -y git
RUN apt-get update && apt-get install -y wget git
WORKDIR /root 
RUN wget 'https://download.java.net/java/GA/jdk23.0.2/6da2a6609d6e406f85c491fcb119101b/7/GPL/openjdk-23.0.2_linux-x64_bin.tar.gz' && tar -xaf openjdk-23.0.2_linux-x64_bin.tar.gz
RUN git clone https://github.com/trinodb/trino.git
CMD bash -c 'declare -x PATH=$PATH:/root/jdk-23.0.2/bin/ ; declare -x JAVA_HOME=/root/jdk-23.0.2 ;  cd trino ; git checkout 468 ; echo $JAVA_HOME ; ./mvnw clean install -e -DskipTests'

FROM ubuntu:25.04
RUN apt-get update && apt-get install -y wget git
WORKDIR /root 
RUN wget 'https://download.java.net/java/GA/jdk23.0.2/6da2a6609d6e406f85c491fcb119101b/7/GPL/openjdk-23.0.2_linux-x64_bin.tar.gz' && tar -xaf openjdk-23.0.2_linux-x64_bin.tar.gz
# RUN git clone https://github.com/trinodb/trino.git
# CMD bash -c 'declare -x PATH=$PATH:/root/jdk-23.0.2/bin/ ; declare -x JAVA_HOME=/root/jdk-23.0.2 ;  cd trino ; git checkout 468 ; ./mvnw install -e -DskipTests -pl !docs && cp /root/trino/client/trino-cli/target/trino-cli-468-executable.jar /mnt/ ; cp /root/trino/core/trino-server/target/trino-server-468.tar.gz /mnt/'
# CMD bash -c 'declare -x PATH=$PATH:/root/jdk-23.0.2/bin/ ; declare -x JAVA_HOME=/root/jdk-23.0.2 ;  cd trino ; ./mvnw install -e -DskipTests -Dcheckstyle.skip=true -X -pl !docs'
# CMD bash -c 'declare -x PATH=$PATH:/root/jdk-23.0.2/bin/ ; declare -x JAVA_HOME=/root/jdk-23.0.2 ;  cd trino ; ./mvnw install -e -DskipTests -Dcheckstyle.skip=true -X -pl core/trino-main'
CMD bash -c 'declare -x PATH=$PATH:/root/jdk-23.0.2/bin/ ; declare -x JAVA_HOME=/root/jdk-23.0.2 ;  cd trino ; ./mvnw install -e -DskipTests -Dair.check.fail-checkstyle=false -pl !docs'
# CMD bash -c 'declare -x PATH=$PATH:/root/jdk-23.0.2/bin/ ; declare -x JAVA_HOME=/root/jdk-23.0.2 ;  cd trino ; ./mvnw validate -e -DskipTests -Dcheckstyle.skip=true -X -pl core/trino-main'
# CMD bash -c 'declare -x PATH=$PATH:/root/jdk-23.0.2/bin/ ; declare -x JAVA_HOME=/root/jdk-23.0.2 ;  cd trino ; ./mvnw install -e -DskipTests -pl core/trino-server'
# CMD bash -c 'declare -x PATH=$PATH:/root/jdk-23.0.2/bin/ ; declare -x JAVA_HOME=/root/jdk-23.0.2 ;  cd trino ; ./mvnw install -e -DskipTests -pl core/trino-server,client/trino-cli'

# NOTE we don't build the `docs` ^^


# TODO if you want another platform you could use one of these JDK builds
# and then change `--platform linux/amd64` in the Makefile to match
#
# https://jdk.java.net/23/
# Builds
# Linux / AArch64tar.gz (sha256)208598806
# Linux / x64tar.gz (sha256)210777300
# macOS / AArch64tar.gz (sha256)204446912
# macOS / x64tar.gz (sha256)206732010
# Windows / x64zip (sha256)209182526

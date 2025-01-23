FROM openjdk:23-jdk
RUN microdnf install -y npm git
WORKDIR /root 
RUN git clone https://github.com/trinodb/trino.git
CMD bash -c 'cd trino ; git checkout 468 ; ./mvnw clean install -DskipTests'

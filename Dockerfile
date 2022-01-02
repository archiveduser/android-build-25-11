FROM androidsdk/android-25:latest

WORKDIR /root/project

ADD build.sh /usr/sbin/

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

RUN sed -i "s/archive.ubuntu.com/mirrors.tencent.com/g" /etc/apt/sources.list &&\
    sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list &&\
    apt update &&\
    apt install -y openjdk-11-jdk &&\
    apt upgrade -y &&\
    chmod +x /usr/sbin/build.sh 

ENTRYPOINT [ "build.sh" ]

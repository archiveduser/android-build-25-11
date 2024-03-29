FROM androidsdk/android-25:latest

WORKDIR /repo

ADD build.sh /usr/sbin/

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV REPO https://ghproxy.com/https://github.com/kamino-space/test-app-25-11.git

RUN sed -i "s/archive.ubuntu.com/mirrors.tencent.com/g" /etc/apt/sources.list &&\
    sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list &&\
    dpkg --remove-architecture i386 &&\
    apt update &&\
    apt install -y openjdk-11-jdk &&\
    apt upgrade -y &&\
    chmod +x /usr/sbin/build.sh 

ENTRYPOINT [ "build.sh" ]

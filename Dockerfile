FROM androidsdk/android-25:latest

WORKDIR /root/project

ADD build.sh /usr/sbin/

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

RUN git clone https://ghproxy.com/https://github.com/kamino-space/test-app-25-11.git . &&\
    sed -i "s/archive.ubuntu.com/mirrors.tencent.com/g" /etc/apt/sources.list &&\
    sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list &&\
    apt update &&\
    apt install -y openjdk-11-jdk &&\
    chmod +x /usr/sbin/build.sh 

ENTRYPOINT [ "build.sh" ]
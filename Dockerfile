FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

ENV ANDROID_HOME      /opt/android-sdk-linux
ENV ANDROID_SDK_HOME  ${ANDROID_HOME}
ENV ANDROID_SDK_ROOT  ${ANDROID_HOME}
ENV ANDROID_SDK       ${ANDROID_HOME}

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget unzip openjdk-17-jdk

RUN groupadd android && useradd -d /opt/android-sdk-linux -g android android

COPY tools /opt/tools
WORKDIR /opt/android-sdk-linux

RUN /opt/tools/install-android.sh

RUN tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "build-tools;30.0.2"
RUN tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "platform-tools"
RUN tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "platforms;android-30"
RUN tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "tools"
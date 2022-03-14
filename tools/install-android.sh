#bin/bash


wget -q https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip -O commandlinetools-linux.zip
unzip commandlinetools-linux.zip
rm commandlinetools-linux.zip

yes | tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses


#export PATH=${PATH}:${ANDROID_HOME}/tools/bin
#export PATH=${PATH}:${ANDROID_HOME}/build-tools/30.0.2
#export PATH=${PATH}:${ANDROID_HOME}/platform-tools
#export PATH=${PATH}:${ANDROID_HOME}/emulator
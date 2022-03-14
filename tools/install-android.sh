#bin/bash

wget -q https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip -O commandlinetools-linux.zip
unzip commandlinetools-linux.zip
rm commandlinetools-linux.zip

yes | tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses
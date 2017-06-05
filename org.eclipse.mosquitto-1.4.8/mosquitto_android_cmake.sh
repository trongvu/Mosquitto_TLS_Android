#!/bin/bash
# Script used to cmake and then make mosquitto for android on MacOSX with android-ndk-r8e and a patched mosquitto source.
# Update paths below and run it from inside the root mosquitto dir (right in the one you clone from hg)

# Used patched mosquitto from: https://bitbucket.org/andreasjk/mosquitto
# Used NDK: http://dl.google.com/android/ndk/android-ndk-r8e-darwin-x86_64.tar.bz2
# Used cmake toolchain file from https://github.com/Itseez/opencv/blob/master/android/android.toolchain.cmake

# Threading has to be disabled since android doesn't support it fully
# Also disabled TLS since I couldn't get cmake to find the openssl lib properly

rm -rf build
mkdir -p build
cd build
cmake \
   -DANDROID_NDK="/home/vntrong/android-ndk-r14b" \
   -DANDROID_ABI="armeabi" \
   -DANDROID_NDK_HOST_X64="YES" \
   -DANDROID_NATIVE_API_LEVEL=19 \
   -DANDROID_TOOLCHAIN_NAME="arm-linux-androideabi-4.9" \
   -DCMAKE_TOOLCHAIN_FILE="/home/vntrong/MQTT/android-cmake-master/android.toolchain.cmake" \
   -DOPENSSL_LIBRARIES="/home/vntrong/MQTT/openssl/arch-$ANDROID_NDK_ABI_NAME/lib" \
   -DOPENSSL_INCLUDE_DIR="/home/vntrong/MQTT/openssl/source/include" \
   -DWITH_TLS=ON \
   -DWITH_THREADING=OFF ..
cd ..
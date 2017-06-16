# Mosquitto_TLS_Android
About supporting TLS connection in Mosquitto for Android.  
Original buildscript was forked @ https://gist.github.com/andreasjk/5525205  
But WITH_TLS flag was disabled due to OpenSSL problem.  
# How to build
1. Check [mosquitto_android_cmake.sh](mosquitto_android_cmake.sh) and update your local value
2. Run mosquitto_android_cmake.sh
3. cd org.eclipse.mosquitto-1.4.8/build & make
# How to use
[Prebuilt binary](prebuilt/) for Android arm-v7a was included.  
Push things to device and enjoy :)
# Original project
Mosquitto: https://mosquitto.org/  
OpenSSL: https://www.openssl.org/

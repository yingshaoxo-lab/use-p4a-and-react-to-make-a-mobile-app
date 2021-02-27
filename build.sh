#https://yingshaoxo.blogspot.com/2020/03/how-to-use-docker-to-build-kivy-to.html

export ANDROIDSDK="/home/user/host/Android/Sdk"
export ANDROIDNDK="/home/user/host/Android/Sdk/ndk/21.0.6113669"
export ANDROIDAPI="29"  # Target API version of your application
export NDKAPI="21"  # Minimum supported API version of your application

#p4a clean_builds
#p4a clean_dists
p4a apk --private . --package=xyz.yingshaoxo.freedom --name "Freedom" --version 0.1 --bootstrap=webview --requirements=python3,flask,flask_cors,protobuf --permission INTERNET --permission WRITE_EXTERNAL_STORAGE --port=8888 --icon icon.png --blacklist ./blacklist.txt

sudo apt-get update
sudo apt-get upgrade

sudo apt install \
libssl1.0.0 \
libgstreamer1.0-0 \
gstreamer1.0-tools \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
gstreamer1.0-libav \
libgstrtspserver-1.0-0 \
libjansson4=2.11-1

git clone https://github.com/edenhill/librdkafka.git
cd librdkafka
git reset --hard 7101c2310341ab3f4675fc565f64f0967e135a6a
./configure
make
sudo make install

sudo mkdir -p /opt/nvidia/deepstream/deepstream-6.0/lib
sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-6.0/lib

wget -O libgstvideo-1.0.so.0.1405.0 https://developer.nvidia.com/libgstvideo-10so014050
sudo cp ~/libgstvideo-1.0.so.0.1405.0 /usr/lib/aarch64-linux-gnu/libgstvideo-1.0.so.0.1405.0

sudo apt-get install ~/deepstream-6.0_6.0.1-1_arm64.deb


# libjson-glib-dev 설치
sudo apt-get install libgstrtspserver-1.0

# gst-rtsp-server
sudo apt-get install libgstrtspserver-1.0-dev gstreamer1.0-rtsp
sudo apt-get install gir1.2-gst-rtsp-server-1.0

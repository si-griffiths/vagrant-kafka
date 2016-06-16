sudo apt-get update
sudo apt-get install openjdk-7-jdk -y
echo "Downloading Kafka, please wait..."
wget -q http://mirror.catn.com/pub/apache/kafka/0.10.0.0/kafka_2.11-0.10.0.0.tgz
echo "Download complete, finishing install"
tar -zxvf kafka_2.11-0.10.0.0.tgz
cd kafka_2.11-0.10.0.0/
echo "host.name=192.168.33.10" >> config/server.properties
bin/zookeeper-server-start.sh config/zookeeper.properties &
bin/kafka-server-start.sh config/server.properties &
echo "Installation complete!"

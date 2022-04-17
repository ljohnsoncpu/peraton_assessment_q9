docker network create pl-network

docker build -f service-bus_dockerfile -t service-bus:1 .
docker run -itd -d -p 5671 5672 15671 15672 25672 --network=pl-network --alias rmq-broker service-bus


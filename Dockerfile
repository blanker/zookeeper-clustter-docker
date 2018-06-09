FROM zookeeper:latest

# Install base packages
RUN apk update && apk add curl bash tree tzdata \
	&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 


FROM alpine:latest

WORKDIR /cloudreve

RUN apk update \

    && apk add --no-cache tzdata \

    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \

    && echo "Asia/Shanghai" > /etc/timezone \

    && apk add wget \

    && wget https://github.com/cloudreve/Cloudreve/releases/download/3.7.1/cloudreve_3.7.1_linux_amd64.tar.gz \

    && tar -zxvf ./cloudreve_3.7.1_linux_amd64.tar.gz \

    && chmod +x ./cloudreve_3.7.1_linux_amd64/cloudreve

    

EXPOSE 5212

ENTRYPOINT ["./cloudreve_3.7.1_linux_amd64/cloudreve"]

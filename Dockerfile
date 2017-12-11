FROM alpine:3.6
MAINTAINER lstrozzini@gmail.com

RUN apk --no-cache --update add bash curl less groff jq python py-pip && \
  pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir awscli==1.14.7 s3cmd==2.0.1
 RUN adduser -S ec2-user
 USER ec2-user
 RUN mkdir /home/ec2-user/.aws

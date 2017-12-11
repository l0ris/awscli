FROM alpine:3.6
MAINTAINER lstrozzini@gmail.com

RUN apk --no-cache --update add bash curl less groff jq python py-pip && \
  pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir awscli==1.11.15 s3cmd==1.6.1 https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-1.4-8.tar.gz 
 # mkdir /root/.aws
 RUN adduser -S ec2-user
 USER ec2-user
 RUN mkdir /home/ec2-user/.aws

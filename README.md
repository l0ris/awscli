Minimalistic awscli running on Alpine Linux. This container did not provide any credentials. Credentials can be injected as volume by running:
docker run -it -v $HOME/.aws:/home/ec2-user/.aws aws ec2 describe-regions.


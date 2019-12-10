FROM alpine:3.10

ENV TERRAFORM_VERSION=0.11.14

RUN apk update
RUN apk add gnupg python3

# Install awscli
RUN easy_install-3.7 pip
RUN pip install awscli

# Install terraform
RUN wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip


FROM alpine:3.10

ENV TERRAFORM_VERSION=0.11.14

RUN apk update
RUN apk add gnupg
RUN wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip

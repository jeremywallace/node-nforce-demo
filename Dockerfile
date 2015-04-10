# DOCKER-VERSION 0.10.0

FROM ubuntu:13.10

# make sure apt is up to date
RUN apt-get update

# install nodejs and npm
RUN apt-get install -y nginx nodejs-legacy npm git git-core 

ENV PATH /usr/bin/node:$PATH

ENV USERNAME test@crowdtourz.com
ENV PASSWORD password123NQYLSoGlnhLAMtTl3QyZ9QW7
ENV CLIENT_ID 3MVG9sG9Z3Q1RlbfiSJiKuC5lWm77jL0XhRNPZi5Gk7bLGTpawclOS5ebJqDH2e8OiJuJEo2mMXjU5nFm87NV
ENV CLIENT_SECRET 5690466383485889746

EXPOSE 80

ADD start.sh /tmp/

RUN chmod +x /tmp/start.sh

CMD ./tmp/start.sh


FROM ubuntu:20.04

RUN apt update

RUN apt install -y git

WORKDIR /usr/src/app

COPY . .

RUN chmod +x main.sh

ENTRYPOINT [ "./main.sh" ]
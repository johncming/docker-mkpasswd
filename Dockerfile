FROM debian:jessie

RUN apt-get update && apt-get install -y whois

ENV PASSWORD password

CMD mkpasswd --method=sha-512 $PASSWORD

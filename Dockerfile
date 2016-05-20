FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive
ENV CHRONOGRAF_VERSION 0.13.0

RUN apt-get update && apt-get install -y wget
RUN wget https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb
RUN dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb && rm chronograf_${CHRONOGRAF_VERSION}_amd64.deb

COPY run.sh /run.sh
RUN chmod +x /run.sh
COPY config.toml /etc/chronograf.toml

EXPOSE 10000
VOLUME ["/data"]
CMD [ "/run.sh" ]

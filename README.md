# docker-chronograf

[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/jbye/chronograf/) [![Docker Pulls](https://img.shields.io/docker/pulls/jbye/chronograf.svg)](https://registry.hub.docker.com/u/jbye/chronograf/)

Docker Image for [InfluxDB Chronograf](https://influxdb.com/chronograf/index.html).

![Chronograf Screenshot](https://influxdb.com/img/blog/chronograf.gif)

## Run

```
docker run -t jbye/chronograf
```

## Configuration

| Environment Variable    | Description                                               
|-------------------------|------------------------------------------------------
| `INFLUXDB_PROTO`        | InfluxDB logging protocol (default `http`)
| `INFLUXDB_HOST`         | InfluxDB host (default `localhost`)
| `INFLUXDB_PORT`         | InfluxDB port (default `8086`)

## Tags

- 0.4.0
- latest

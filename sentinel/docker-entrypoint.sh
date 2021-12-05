#!/bin/bash

set -e

java -Dserver.port=8080 \
     -Dcsp.sentinel.metric.file.total.count=6 \
     -Dcsp.sentinel.log.output.type=console \
     -Dcsp.sentinel.dashboard.server=localhost:8080 \
     -Dproject.name=sentinel-dashboard -Dsentinel.dashboard.auth.username=$SENTINEL_USERNAME \
     -Dsentinel.dashboard.auth.password=$SENTINEL_PASSWORD -jar sentinel.jar \
     > /dev/stdout 2>&1

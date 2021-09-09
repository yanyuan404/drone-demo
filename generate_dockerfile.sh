#!/bin/bash

printf '%s\n\n%s %s %s\n\n%s %s\n\n%s\n' \
    'FROM openjdk:8-jre' \
    'ADD' "$1" 'app.jar' \
    'EXPOSE' "8080" \
    'ENTRYPOINT ["java", "-Duser.timezone=GMT+08","-jar", "/app.jar", "--spring.profiles.active=dev"]' \
    >> Dockerfile

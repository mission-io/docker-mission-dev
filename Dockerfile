# Dockerfile for Mission IO Development stack
# Docker, Git, Node, NPM, mission.cli

FROM docker:latest

RUN apk update \\
    && apk add nodejs --no-cache && node -v \\
    && apk add npm --no-cache && node -v \\
    && apk add git --no-cache && git version 

RUN npm install mission.cli -g --ignore-scripts && mio version

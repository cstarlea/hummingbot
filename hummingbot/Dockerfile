ARG BUILD_FROM=hassioaddons/base:latest
FROM ghcr.io/hummingbot/hummingbot:latest

# Set locale/environment variables
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

WORKDIR /hummingbot

# Copy our startup script into the image
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]

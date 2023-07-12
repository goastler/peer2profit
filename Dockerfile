FROM jlesage/baseimage-gui:ubuntu-22.04-v4.4.2

WORKDIR /

COPY peer2profit_0.48_amd64.deb deb.deb

RUN apt-get update && apt-get install -y ./deb.deb && rm ./deb.deb

# Copy the start script.
COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh
COPY setup.sh /setup.sh
RUN chmod +x /setup.sh

# Set the name of the application.
RUN set-cont-env APP_NAME "peer2profit"

ENV EMAIL=""
ENV ID=""
ENTRYPOINT bash /setup.sh
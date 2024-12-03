FROM openjdk:17-jdk-slim

WORKDIR /data

# Minecraft Server herunterladen
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://api.papermc.io/v2/projects/paper/versions/1.21.3/builds/80/downloads/paper-1.21.3-80.jar -O minecraft_server.jar && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# EULA und Server-Properties vorbereiten
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Standardport für Minecraft
EXPOSE 25565

# Server starten
CMD [ "/run.sh" ]

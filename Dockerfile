FROM webhippie/minecraft-vanilla:1.7.10
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV MINECRAFT_VERSION 1.7.10
ENV CAULDRON_VERSION 1.1207.01.198
ENV CAULDRON_JAR cauldron-${MINECRAFT_VERSION}-${CAULDRON_VERSION}-server.jar
ENV CAULDRON_URL http://minecraft.maeyanie.com/cauldron/cauldron-${MINECRAFT_VERSION}-${CAULDRON_VERSION}-installer.jar
ENV BUKKIT_URL http://minecraft.maeyanie.com/cauldron/cauldronbukkit-${MINECRAFT_VERSION}-${CAULDRON_VERSION}.jar

ENV SERVER_MAXHEAP 2048M
ENV SERVER_MINHEAP 512M
ENV SERVER_MAXPERM 128M
ENV SERVER_OPTS nogui
ENV SERVER_MOTD Minecraft
ENV SERVER_RCONPWD webhippie

ADD libexec /minecraft/libexec

RUN curl -o /minecraft/cauldron-${MINECRAFT_VERSION}-${CAULDRON_VERSION}-installer.jar ${CAULDRON_URL} 2> /dev/null
RUN curl -o /minecraft/cauldronbukkit-${MINECRAFT_VERSION}-${CAULDRON_VERSION}.jar ${BUKKIT_URL} 2> /dev/null
RUN cd /minecraft && java -jar cauldron-${MINECRAFT_VERSION}-${CAULDRON_VERSION}-installer.jar --installServer
RUN rm -f /minecraft/cauldron-${MINECRAFT_VERSION}-${FORGE_VERSION}-installer.jar

VOLUME ["/minecraft/merge", "/minecraft/world", "/minecraft/logs"]

EXPOSE 25565 25575

WORKDIR /minecraft
ENTRYPOINT ["manage"]
CMD ["bash"]

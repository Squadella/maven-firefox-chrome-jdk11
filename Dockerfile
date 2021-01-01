FROM adoptopenjdk/openjdk11:debian-slim
RUN apt update -y
RUN apt install -y firefox-esr chromium maven
RUN mkdir -p /resources/avatars/
RUN chmod -R 777 /resources/
ENTRYPOINT ["/bin/bash"]

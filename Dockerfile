FROM adoptopenjdk/openjdk11:debian-slim
RUN apt update -y
RUN apt install -y firefox-esr chromium maven git
RUN mkdir -p /resources/avatars/
RUN chmod -R 777 /resources/
RUN export CHROMIUM_BIN=/usr/bin/google-chrome
ENTRYPOINT ["/bin/bash"]

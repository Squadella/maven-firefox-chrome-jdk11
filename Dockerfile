FROM adoptopenjdk/openjdk11:debian-slim
RUN apt update -y
RUN apt install -y firefox-esr chromium maven curl git
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN mkdir -p /resources/avatars/
RUN chmod -R 777 /resources/
RUN export CHROMIUM_BIN=/usr/bin/google-chrome
ENTRYPOINT ["/bin/bash"]

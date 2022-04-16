FROM adoptopenjdk/openjdk11:debian-slim
RUN apt update -y
# Installing available packages on the repo.
RUN apt install -y firefox-esr chromium maven git
# Installing node js and npm with nvm.
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# Installing the latest version of node js.
RUN chmod +x ~/.nvm/nvm.sh
RUN ~/.nvm/nvm.sh install node
RUN mkdir -p /resources/avatars/
RUN chmod -R 777 /resources/
RUN export CHROMIUM_BIN=/usr/bin/google-chrome
ENTRYPOINT ["/bin/bash"]

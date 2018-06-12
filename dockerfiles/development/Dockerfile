ARG NODE_VERSION=9.4.0-slim
FROM node:$NODE_VERSION

# add more arguments from CI to the image so that `$ env` should reveal more info

ARG CI_BUILD_ID
ARG CI_BUILD_REF
ARG CI_REGISTRY_IMAGE
ARG CI_BUILD_TIME
ARG NG_CLI_VERSION=latest

ENV CI_BUILD_ID=$CI_BUILD_ID CI_BUILD_REF=$CI_BUILD_REF CI_REGISTRY_IMAGE=$CI_REGISTRY_IMAGE \
    CI_BUILD_TIME=$CI_BUILD_TIME \
    NG_CLI_VERSION=$NG_CLI_VERSION


RUN mkdir /app
WORKDIR /app
COPY package.json /app
# COPY package-lock.json /app
COPY . /app
RUN npm install
RUN npm install -g @angular/cli@$NG_CLI_VERSION

EXPOSE 4200
#
#
# RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
#     && sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
#     && apt-get update && apt-get install -y Xvfb google-chrome-stable \
#     && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#
# ADD xvfb.sh /etc/init.d/xvfb
# ADD entrypoint.sh /entrypoint.sh
#
# RUN chmod +x /etc/init.d/xvfb \
#     && chmod +x /entrypoint.sh
#
# ENV DISPLAY :99.0
# ENV CHROME_BIN /usr/bin/google-chrome
#
#
# ENTRYPOINT ["/entrypoint.sh"]

# CMD [ "ng", "serve","--host","0.0.0.0" ]

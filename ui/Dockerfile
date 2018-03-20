FROM node:9.8.0

ENV VERLICHTING_WEBAPP_VERSION=0ee42d5edca104ebb593e412e52fa56a25f31ef9

RUN cd /var \
    && git clone https://github.com/lmeijvogel/verlichting-webapp-elm \
    && cd /var/verlichting-webapp-elm \
    && git checkout ${VERLICHTING_WEBAPP_VERSION}

WORKDIR /var/verlichting-webapp-elm

RUN npm install
RUN sh script/build.sh
RUN npm prune --production

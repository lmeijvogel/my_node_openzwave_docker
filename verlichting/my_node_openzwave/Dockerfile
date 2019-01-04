FROM node:9.11.1-stretch

ENV OPENZWAVE_VERSION=510a37df958d7b7108781e7a16bfe52e5831514d

RUN apt-get update
RUN apt-get install -y \
      coreutils \
      g++ \
      gcc \
      git \
      libudev-dev \
      make \
      python-dev \
      libstdc++6

RUN cd /root \
    && git clone https://github.com/OpenZWave/open-zwave.git \
    && cd open-zwave \
    && git checkout ${OPENZWAVE_VERSION} \
    && make

RUN cd /root/open-zwave \
    && make install

ENV MY_NODE_OPENZWAVE_VERSION=11ad630eb49039d63de0b2d726afc97e9f75536d
RUN cd /root \
    && git clone https://github.com/lmeijvogel/my_node_openzwave \
    && cd my_node_openzwave \
    && git checkout ${MY_NODE_OPENZWAVE_VERSION} \
    && npm install

RUN echo "/root/open-zwave" >/etc/ld.so.conf.d/open-zwave.conf \
    && ldconfig

ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /root/my_node_openzwave

CMD yarn start --config /etc/config.json

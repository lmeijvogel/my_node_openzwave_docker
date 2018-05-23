FROM node:9.8.0

ENV OPENZWAVE_VERSION=510a37df958d7b7108781e7a16bfe52e5831514d

RUN apt-get update
RUN apt-get install -y \
      coreutils \
      g++ \
      gcc \
      git \
      libudev-dev \
      make \
      python-dev

RUN cd /root \
    && git clone https://github.com/OpenZWave/open-zwave.git \
    && cd open-zwave \
    && git checkout ${OPENZWAVE_VERSION} \
    && make

RUN cd /root/open-zwave \
    && make install

ENV MY_NODE_OPENZWAVE_VERSION=b74f5c262b6f1997311e282c12d46fd3cf5cf7f9

RUN cd /root \
    && git clone https://github.com/lmeijvogel/my_node_openzwave \
    && cd my_node_openzwave \
    && git checkout ${MY_NODE_OPENZWAVE_VERSION} \
    && npm install

RUN echo "/root/open-zwave" >/etc/ld.so.conf.d/open-zwave.conf \
    && ldconfig

RUN cd /root/my_node_openzwave && sed -i -e "s/server = app.listen(port, 'localhost');/server = app.listen(port);/" rest_server.js

ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /root/my_node_openzwave

CMD node main.js --config /etc/config.json

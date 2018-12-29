FROM ruby:2.3.6

RUN cd /root \
    && git clone https://github.com/lmeijvogel/verlichting-webapp

ENV WEBAPP_VERSION=31ddde1a0e79937bb8d945ae5b19f26209252126

RUN cd /root/verlichting-webapp \
    && git fetch \
    && git checkout ${WEBAPP_VERSION} \
    && bundle install --without=development

WORKDIR /root/verlichting-webapp

CMD bundle exec thin start

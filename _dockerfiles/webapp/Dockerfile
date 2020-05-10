FROM ruby:2.3.6

RUN cd /root \
    && git clone https://github.com/lmeijvogel/verlichting-webapp

ENV WEBAPP_VERSION=da5ebed1f02b2ffb0779c5aded495a322157ac62

RUN cd /root/verlichting-webapp \
    && git fetch \
    && git checkout ${WEBAPP_VERSION} \
    && bundle install --without=development

WORKDIR /root/verlichting-webapp

CMD bundle exec thin start

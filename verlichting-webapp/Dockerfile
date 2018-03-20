FROM ruby:2.3.6

RUN cd /root \
    && git clone https://github.com/lmeijvogel/verlichting-webapp

ENV WEBAPP_VERSION=a5f1684f1aa164c6bbb9a16471fcc52f3409a28f

RUN cd /root/verlichting-webapp \
    && git fetch \
    && git checkout ${WEBAPP_VERSION} \
    && bundle install --without=development

WORKDIR /root/verlichting-webapp

CMD bundle exec thin start

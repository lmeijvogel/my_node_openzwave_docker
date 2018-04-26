FROM ruby:2.3.6

RUN cd /root \
    && git clone https://github.com/lmeijvogel/verlichting-webapp

ENV WEBAPP_VERSION=faa0f180e7f5294fa8bc3072ee7e6a1ff22d592c

RUN cd /root/verlichting-webapp \
    && git fetch \
    && git checkout ${WEBAPP_VERSION} \
    && bundle install --without=development

WORKDIR /root/verlichting-webapp

CMD bundle exec thin start

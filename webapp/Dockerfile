FROM ruby:2.3.6

RUN cd /root \
    && git clone https://github.com/lmeijvogel/verlichting-webapp

ENV WEBAPP_VERSION=b6e683b407c51f0239f20ab848c1aa7e6af0444e

RUN cd /root/verlichting-webapp \
    && git fetch \
    && git checkout ${WEBAPP_VERSION} \
    && bundle install --without=development

WORKDIR /root/verlichting-webapp

CMD bundle exec thin start

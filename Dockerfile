FROM phusion/passenger-ruby31

RUN rm -f /etc/service/nginx/down
RUN rm /etc/nginx/sites-enabled/default
ADD docker/nginx/webapp.conf /etc/nginx/sites-enabled/webapp.conf
ADD docker/nginx/secret_key.conf /etc/nginx/main.d/secret_key.conf

COPY --chown=app:app . /home/app/webapp
WORKDIR /home/app/webapp
USER app
RUN bundle config set deployment 'true' && \
    bundle config set without 'development test' && \
    bundle install --jobs 4

USER root
CMD ["/sbin/my_init"]

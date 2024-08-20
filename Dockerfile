FROM ruby:3.3.3 as build
LABEL stage=build
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    locales \
    imagemagick \
    build-essential \
    zlib1g-dev \
    jupyter-nbconvert \
    inotify-tools procps \
    nodejs \
    git && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
RUN mkdir /srv/jekyll
WORKDIR /srv/jekyll
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    NOKOGIRI_USE_SYSTEM_LIBRARIES=true \
    JEKYLL_ENV=production
ADD Gemfile.lock /srv/jekyll
ADD Gemfile /srv/jekyll
RUN bundle install
COPY . .
RUN bundle exec jekyll build
FROM nginx:1.27.0
COPY --from=build /srv/jekyll/_site /usr/share/nginx/html

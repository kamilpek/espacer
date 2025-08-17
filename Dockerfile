FROM ruby:3.3.0

ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    postgresql-client \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/lists

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - \
      && apt-get install -y nodejs

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN gem install bundler -v 2.5.7
RUN bundle install
COPY . .

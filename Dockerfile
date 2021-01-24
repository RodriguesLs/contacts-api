FROM ruby:2.6.6

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && gem install bundler rails

ENV APP_HOME /contacts-api
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile $APP_HOME
COPY Gemfile.lock $APP_HOME
RUN bundle install
COPY . $APP_HOME/

EXPOSE 3001

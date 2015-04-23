FROM ruby:2.2.1

RUN apt-get update -qq && apt-get install -y build-essential
RUN apt-get install -y libxml2-dev libxslt1-dev
RUN apt-get install -y libqt4-webkit libqt4-dev xvfb
RUN apt-get install -y nodejs

ENV APP_HOME /code
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME
RUN bundle install

FROM ruby:2.5.1

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

RUN apt-get update
RUN apt-get -y install mysql-server

# mysql起動の設定
# RUN service mysql start

ADD . /app
#RUN rails db:create
#RUN rails db:migrate

RUN chmod +x ./start.sh
CMD ["bash", "start.sh"]
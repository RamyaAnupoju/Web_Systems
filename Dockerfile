FROM ruby:3.0.0
MAINTAINER mkakarla@horizon.csueastbay.edu

#RUN apt-get update && apt-get install -y nodejs build-essential

RUN mkdir -p /app

#COPY .  /CS651Photosite
COPY Gemfile Gemfile.lock ./
#WORKDIR /CS651Photosite
RUN bundle install

COPY . ./
EXPOSE 3000
CMD rails server -e development -p 3000 -b 0.0.0.0
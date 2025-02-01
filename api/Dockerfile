# api/Dockerfile
FROM ruby:3.3.7
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .
CMD ["rails", "s", "-b", "0.0.0.0"]

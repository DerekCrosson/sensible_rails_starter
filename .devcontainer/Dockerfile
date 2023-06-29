FROM ruby:3.0.2-buster

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    postgresql-client

# Install Ruby gems
WORKDIR /workspace
RUN gem install bundler

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Install Yarn
RUN npm install -g yarn

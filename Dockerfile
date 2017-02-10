FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.3

RUN gem install experiment --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["experiment"]
CMD ["--help"]

FROM ruby:2.4-alpine
LABEL maintainer "masutaka.net@gmail.com"

ENV BUILD_DEPENDENCIES="build-base cmake icu-dev"

RUN apk add --update --no-cache ${BUILD_DEPENDENCIES} icu-libs python && \
    gem install -N qiita-markdown-cli && \
    apk del --purge ${BUILD_DEPENDENCIES}

ENTRYPOINT ["qmc"]

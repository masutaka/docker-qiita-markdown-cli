FROM ruby:2.4-alpine
LABEL maintainer "masutaka.net@gmail.com"

# ENV BUILD_DEPENDENCIES="build-base cmake icu-dev"
# 
# RUN apk add --update --no-cache ${BUILD_DEPENDENCIES} icu-libs python && \
#     gem install -N qiita-markdown-cli && \
#     apk del --purge ${BUILD_DEPENDENCIES}

ENV BUILD_DEPENDENCIES="build-base cmake git icu-dev"

RUN apk add --update --no-cache ${BUILD_DEPENDENCIES} icu-libs python && \
    gem install -N specific_install && \
    gem specific_install -l git://github.com/masutaka/qiita-markdown-cli.git -b fix-argument-error && \
    apk del --purge ${BUILD_DEPENDENCIES}

ENTRYPOINT ["qmc"]

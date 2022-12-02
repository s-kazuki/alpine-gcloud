FROM docker:20

LABEL maintainer="S-Kazuki<contact@revoneo.com>"

ENV APP_ROOT=/root
ENV PATH=$PATH:/root/google-cloud-sdk/bin

WORKDIR $APP_ROOT

RUN apk -Uuv add bash curl python3 \
    && curl -sSL https://sdk.cloud.google.com | bash \
    && apk del bash curl \
    && rm /var/cache/apk/*
